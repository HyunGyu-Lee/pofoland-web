/**
 * 
 */
package com.hst.pofoland.biz.storage.domain;

import lombok.Data;

/**
 * 파일 저장 결과
 *
 * @author HG
 * @since 2018. 9. 12.
 * @see
 *
 */
@Data
public class StoreResult {

    /**
     * 정상 저장 여부
     */
    private boolean stored;
    
    /**
     * 저장 경로
     */
    private String storedPath;
    
    /**
     * 저장 파일명
     */
    private String storedName;
    
    /**
     * 원본 파일명
     */
    private String originalName;
    
    /**
     * 확장자
     */
    private String extention;
    
    /**
     * 파일크기
     */
    private long size;
    
}
