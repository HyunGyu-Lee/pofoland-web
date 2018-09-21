/**
 * 
 */
package com.hst.pofoland.common.mvc.domain;

import java.util.List;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 페이징 정보를 표현한 도메인
 *
 * @author HG
 * @since 2018. 9. 8.
 * @see
 *
 */
@Data
@EqualsAndHashCode(callSuper = false)
@SuppressWarnings("unused")
public class PagableDomain extends BasicDomain {

    private static final long serialVersionUID = 7389565102731499897L;

    private int pageNo;
    
    private int pageSize;
    
}
