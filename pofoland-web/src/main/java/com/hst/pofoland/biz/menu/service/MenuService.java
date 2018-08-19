/**
 * 
 */
package com.hst.pofoland.biz.menu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import com.hst.pofoland.biz.menu.dao.MenuDAO;
import com.hst.pofoland.biz.menu.domain.Menu;
import com.hst.pofoland.common.mvc.service.CommonService;
import com.hst.pofoland.common.utils.CollectionUtils;

/**
 * 메뉴 서비스
 *
 * @author HG
 * @since 2018. 8. 4.
 * @see
 *
 */
@Service
public class MenuService extends CommonService {

    private MenuDAO menuDAO;

    @Autowired
    public MenuService(MenuDAO menuDAO) {
        this.menuDAO = menuDAO;
    }
    
    /**
     * 계층형 메뉴구조 조회
     * 
     * @return
     */
    @Cacheable(value="menus")
    public List<Menu> findMenusHierarchy() {
        List<Menu> flatMenus = menuDAO.findList(new Menu());
        
        return CollectionUtils.flatToHierarchy(flatMenus, 0, 1);
    }
    
}
