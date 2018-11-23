/**
 * 
 */
package com.hst.pofoland.common.utils;

import java.io.StringReader;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
import java.util.stream.Collectors;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.Unmarshaller;

import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.entity.ContentType;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;

import com.hst.pofoland.biz.career.domain.CareerSearch;

import lombok.experimental.UtilityClass;
import lombok.extern.slf4j.Slf4j;

/**
 * HTTP 통신 관련 유틸리티 클래스
 *
 * @author HG
 * @since 2018. 8. 26.
 * @see
 *
 */
@Slf4j
@UtilityClass
public class HttpUtils {

    private static final String DEFAULT_CHARSET = "UTF-8";
    
    private static ContentType getContentType(HttpResponse response) {
        return ContentType.getOrDefault(response.getEntity());
    }
    
    private static HttpResponse call(HttpRequestBase request) throws Exception {
        CloseableHttpClient httpClient = HttpClients.createDefault();
        return httpClient.execute(request);
    }

    @SuppressWarnings("unchecked")
    private static <T> T get(String url, Map<String, String> parameters, Class<T> entityType) throws Exception {
        String urlEncodedString = generateParameter(parameters);
        
        log.debug("GET [{}] with [{}]", url, urlEncodedString);
        
        HttpGet getRequest = new HttpGet(url + "?" + urlEncodedString);
        
        HttpResponse response = call(getRequest);
        
        T instance = null;
        
        if (ContentType.TEXT_XML.getMimeType().equals(getContentType(response).getMimeType())) {
            JAXBContext jaxbContext = JAXBContext.newInstance(entityType);
            Unmarshaller unmarshaller = jaxbContext.createUnmarshaller();
            StringReader sr = new StringReader(EntityUtils.toString(response.getEntity()));
            
            instance = (T) unmarshaller.unmarshal(sr);
        }
        
        return instance;
    }
    
    private static String generateParameter(Map<String, String> parameters) {
        return parameters.entrySet().stream().map(e -> encode(e.getKey()) + "=" + encode(e.getValue()))
                .collect(Collectors.joining("&"));
    }
    
    private static String encode(String value) {
        try {
            return URLEncoder.encode(value, DEFAULT_CHARSET);
        } catch (Exception e) {
            return "";
        }
    }
    
    public static void main(String[] args) {
        Map<String, String> param = new HashMap<>();
        param.put("keywords", "IT");
        
        try {
            CareerSearch careerSearch = HttpUtils.get("http://api.saramin.co.kr/job-search", param, CareerSearch.class);
            
            careerSearch.getCareers().getCareer().forEach(e -> System.out.println(e));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
}
