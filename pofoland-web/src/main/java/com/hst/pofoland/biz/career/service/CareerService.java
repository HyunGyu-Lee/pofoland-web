package com.hst.pofoland.biz.career.service;

import java.io.IOException;
import java.io.StringReader;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.Unmarshaller;

import org.apache.commons.lang3.StringUtils;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.springframework.stereotype.Service;

import com.hst.pofoland.biz.career.domain.CareerSearch;

@Service
public class CareerService {
	public CareerSearch careerSearch(String keywords) throws Exception {
		 CloseableHttpClient httpclient = HttpClients.createDefault();
	        try {
	            HttpGet httpget = new HttpGet("http://api.saramin.co.kr/job-search?keywords="+StringUtils.defaultString(keywords));
	            
	            System.out.println("Executing request " + httpget.getRequestLine());

	            // Create a custom response handler
	            ResponseHandler<String> responseHandler = new ResponseHandler<String>() {

	                @Override
	                public String handleResponse(
	                        final HttpResponse response) throws IOException {
	                    int status = response.getStatusLine().getStatusCode();
	                    if (status >= 200 && status < 300) {
	                        HttpEntity entity = response.getEntity();
	                        return entity != null ? EntityUtils.toString(entity) : null;
	                    } else {
	                    	 throw new ClientProtocolException("Unexpected response status: " + status);
	                    }
		               
	                }
	            };
	            String responseBody = httpclient.execute(httpget, responseHandler);
	            JAXBContext jaxbContext = JAXBContext.newInstance(CareerSearch.class);
	            Unmarshaller unmarshaller = jaxbContext.createUnmarshaller();
	            StringReader sr = new StringReader(responseBody);
	            CareerSearch careerSearch = (CareerSearch)unmarshaller.unmarshal(sr);
	            System.out.println("----------------------------------------");
	            System.out.println("서치"+careerSearch);
	            return careerSearch;
	        } finally {
	        	 httpclient.close();
	        }
	}
}


