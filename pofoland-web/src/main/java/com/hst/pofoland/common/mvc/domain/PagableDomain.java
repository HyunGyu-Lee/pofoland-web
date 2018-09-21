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
@EqualsAndHashCode(callSuper = false)
@SuppressWarnings("unused")
public class PagableDomain extends BasicDomain {

    private static final long serialVersionUID = 7389565102731499897L;

    private int pageNo;
    
    private int pageSize;

    public int getPageNo() {
        return pageNo == 0 ? 1 : pageNo;
    }

    public void setPageNo(int pageNo) {
        this.pageNo = pageNo;
    }

    public int getPageSize() {
        return pageSize == 0 ? 10 : pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }
}
