/**
 * 
 */
package com.hst.pofoland.biz.storage.domain;

import com.hst.pofoland.common.mvc.domain.BasicDomain;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 저장가능한 파일 정보를 표현한 추상 도메인
 *
 * @author HG
 * @since 2018. 9. 16.
 * @see
 *
 */
@Data
@EqualsAndHashCode(callSuper = false)
public abstract class StorableDomain extends BasicDomain {

    private static final long serialVersionUID = 5367808319117789342L;

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
    private Long fileSize;
    
}
