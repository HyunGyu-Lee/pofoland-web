/**
 * 
 */
package com.hst.pofoland.biz.storage.service;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

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
     * 저장소 루트 경로
     */
    @Value("${storage.root}")
    private String storageRoot;
    
    @Value("${storage.portfolio}")
    private String portfolioFiles;
    
    /**
     * 파일 저장
     * 
     * @param uploadedFile
     * @return
     */
    public StoreResult store(MultipartFile uploadedFile) {
        String extension = FilenameUtils.getExtension(uploadedFile.getOriginalFilename());
        
        String storedName = UUID.randomUUID().toString().replaceAll("-", "") + "." + extension;
        String storedPath = resolvePath(portfolioFiles);
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
     * @param uploadFiles
     * @return
     */
    public List<StoreResult> store(List<MultipartFile> uploadFiles) {
        List<StoreResult> results = new ArrayList<>();

        for (MultipartFile file : uploadFiles) {
            results.add(store(file));
        }

        return results;
    }
    
    /**
     * 저장소 경로 GET
     * 
     * @param path
     * @return
     */
    public String resolvePath(String path) {
        return path.startsWith(File.separator) ? storageRoot + path : storageRoot + File.separator + path;
    }

    @Override
    public void afterPropertiesSet() throws Exception {
        log.info("========================================================================================");
        log.info("StorageService initiate start.");
        
        File rootDir = new File(storageRoot);
        File portfolioDir = new File(rootDir, portfolioFiles);
        
        log.info("Using storage root [{}]", rootDir.getAbsolutePath());
        
        if (portfolioDir.exists() == false) {
            log.info("create businiess directory [{}]", portfolioDir.getAbsolutePath());
            portfolioDir.mkdirs();
        }
        
        log.info("StorageService initiate finish.");
        log.info("========================================================================================");
    }
    
}
