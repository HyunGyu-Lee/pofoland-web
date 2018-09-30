/**
 * 
 */
package com.hst.pofoland.common.mvc.domain;

import java.io.Serializable;
import java.util.Date;

import lombok.Data;

/**
 * 기본 도메인
 *
 * @author HG
 * @since 2018. 8. 6.
 * @see
 *
 */
@Data
public abstract class BasicDomain implements Serializable {

    private static final long serialVersionUID = 7647947402474981794L;

    /**
     * 등록일시
     */
    private Date regDtm;
    
    /**
     * 등록사용자번호
     */
    private int regUserNo;
    
    /**
     * 수정일시
     */
    private Date updDtm;
    
    /**
     * 수정사용자번호
     */
    private int updUserNo;
}