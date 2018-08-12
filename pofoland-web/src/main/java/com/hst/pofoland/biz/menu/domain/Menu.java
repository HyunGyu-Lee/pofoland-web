/**
 * 
 */
package com.hst.pofoland.biz.menu.domain;

import com.hst.pofoland.common.mvc.domain.HierarchyDomain;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 메뉴 도메인
 *
 * @author HG
 * @since 2018. 8. 4.
 * @see
 *
 */
@Data
@EqualsAndHashCode(callSuper = false)
public class Menu extends HierarchyDomain<Integer, Menu> {
    
    private static final long serialVersionUID = -8973698027194787663L;

    private int menuId;
    
    private int upMenuId;
    
    private String menuNm;
    
    private String menuUrl;
    
    private int menuOrder;

    @Override
    public Integer getKey() {
        return this.menuId;
    }

    @Override
    public Integer getParentKey() {
        return this.upMenuId;
    }
        
}
