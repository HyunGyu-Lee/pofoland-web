/**
 * 
 */
package com.hst.pofoland.biz.portfolio.domain;

import com.hst.pofoland.common.mvc.domain.BasicDomain;

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
public class PortfolioFile extends BasicDomain {

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
    
}
