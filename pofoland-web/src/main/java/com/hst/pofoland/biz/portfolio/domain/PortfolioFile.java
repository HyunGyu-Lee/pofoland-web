/**
 * 
 */
package com.hst.pofoland.biz.portfolio.domain;

import com.hst.pofoland.biz.storage.domain.StorableDomain;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 포트폴리오 파일
 *
 * @author HG
 * @since 2018. 9. 15.
 * @see
 *
 */
@Data
@EqualsAndHashCode(callSuper = false)
public class PortfolioFile extends StorableDomain {

    private static final long serialVersionUID = 8743198971599344180L;
    
    private Integer pofolFileNo;
    
    private String pofolFileOrgnNm;
    
    private Integer pofolFileSize;
    
    private String pofolFileExtNm;
    
    private String pofolFileSaveNm;
    
    private String pofolFilePath;
    
    private String delYn;
    
    private Integer pofolNo;
    
    private Integer pofolPageNo;

    @Override
    public void setStoredPath(String storedPath) {
        this.pofolFilePath = storedPath;
    }

    @Override
    public void setOriginalName(String originalName) {
        this.pofolFileOrgnNm = originalName;
    }

    @Override
    public void setStoredName(String storedName) {
        this.pofolFileSaveNm = storedName;
    }

    @Override
    public void setFileSize(Long fileSize) {
        this.pofolFileSize = fileSize.intValue();
    }

    @Override
    public void setExtention(String extention) {
        this.pofolFileExtNm = extention;
    }

    @Override
    public String getStoredPath() {
        return pofolFilePath;
    }

    @Override
    public String getOriginalName() {
        return pofolFileOrgnNm;
    }

    @Override
    public String getStoredName() {
        return pofolFileSaveNm;
    }

    @Override
    public Long getFileSize() {
        return Long.valueOf(pofolFileSize);
    }

    @Override
    public String getExtention() {
        return pofolFileExtNm;
    }
}
