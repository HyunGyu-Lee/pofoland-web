/**
 * 
 */
package com.hst.pofoland.biz.storage.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.UUID;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.hst.pofoland.biz.storage.domain.StorableDomain;
import com.hst.pofoland.biz.storage.domain.StoreResult;
import com.hst.pofoland.common.mvc.service.CommonService;

import lombok.extern.slf4j.Slf4j;

/**
 * File 등 서버 저장소 관련 서비스
 *
 * @author HG
 * @since 2018. 9. 12.
 * @see
 *
 */
@Service
@Slf4j
public class StorageService extends CommonService implements InitializingBean {

    /**
     * 경로 구분자
     */
    private static final String IN = File.separator;
    
    /**
     * 저장소 루트 경로
     */
    @Value("${storage.root}")
    private String storageRoot;
    
    /**
     * 업무별 파일 저장 경로
     * application.properties 참조
     */
    @Value("#{${storage.biz}}")
    private Map<String, String> storageBiz;
    
    @Override
    public void afterPropertiesSet() throws Exception {
        log.info("========================================================================================");
        log.info("StorageService initiate start.");
        
        File rootDir = new File(storageRoot);
        
        log.info("Using storage root [{}]", rootDir.getAbsolutePath());
        
        if (rootDir.exists() == false) {
            log.info("Storage root is not exist. create..!");
            rootDir.mkdirs();
        }
        
        log.info("business storaging initialize start");
        
        for (Entry<String, String> bizEntry : storageBiz.entrySet()) {
            File bizDir = new File(rootDir, bizEntry.getValue());
            
            log.info("Using storage {} [{}]", bizEntry.getKey(), bizDir.getAbsolutePath());
            
            if (bizDir.exists() == false) {
                log.info("Storage {} is not exist. create..!", bizEntry.getKey());
                bizDir.mkdirs();
            }
        }
        
        log.info("StorageService initiate finish.");
        log.info("========================================================================================");
    }
    
    /**
     * 파일 저장
     * 
     * @param bizName       업무명
     * @param uploadedFile  파일객체
     * @return
     */
    public StoreResult store(String bizName, MultipartFile uploadedFile) {
        String extension = FilenameUtils.getExtension(uploadedFile.getOriginalFilename());
        String storedName = UUID.randomUUID().toString().replaceAll("-", "") + "." + extension;
        String storedPath = resolvePath(storageBiz.get(bizName));
        String fullStoredPath = storedPath + File.separator + storedName;

        StoreResult storeResult = new StoreResult();
        storeResult.setStored(true);
        storeResult.setStoredPath(storedPath);
        storeResult.setStoredName(storedName);
        storeResult.setOriginalName(uploadedFile.getOriginalFilename());
        storeResult.setSize(uploadedFile.getSize());
        storeResult.setExtention(extension);
        
        try {
            uploadedFile.transferTo(new File(fullStoredPath));
        } catch (Exception e) {
            log.info("Fail to storing file.");
            log.info("Caused by [{}]", e.getMessage());
            
            storeResult.setStored(false);
        }
        
        log.info("store file finish [{}]", fullStoredPath);
        
        return storeResult;
    }
    
    /**
     * 다중파일 저장
     * 
     * @param bizName       업무식별자
     * @param uploadFiles   파일객체 목록
     * @return
     */
    public List<StoreResult> store(String bizName, List<MultipartFile> uploadFiles) {
        List<StoreResult> results = new ArrayList<>();

        for (MultipartFile file : uploadFiles) {
            results.add(store(bizName, file));
        }

        return results;
    }
    
    /**
     * 저장소 ROOT 이하 경로 GET
     * 
     * @param path
     * @return
     */
    private String resolvePath(String path) {
        return path.startsWith(IN) ? storageRoot + path : storageRoot + IN + path;
    }

    /**
     * StorableDomain에서 풀 경로 반환
     * 
     * @param storableDomain
     * @return
     */
    private String getStoredFullPath(StorableDomain storableDomain) {
        return storableDomain.getStoredPath() + IN + storableDomain.getStoredName();
    }
    
    public InputStream getResourceAsStream(StorableDomain storableDomain) throws IOException {
        String path = getStoredFullPath(storableDomain);
        
        return new FileInputStream(new File(path));
    }
    
    public byte[] getBytes(StorableDomain storableDomain) throws IOException {
        return IOUtils.toByteArray(getResourceAsStream(storableDomain));
    }

    /**
     * StoragleDomain streaming
     * 
     * @param portfolioFile
     * @param out
     * @throws IOException 
     */
    public void streaming(StorableDomain storableDomain, OutputStream out) throws IOException {
        InputStream in = getResourceAsStream(storableDomain);
        
        IOUtils.copy(in, out);
    }
    
}
