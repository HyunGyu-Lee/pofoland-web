/**
 * 
 */
package com.hst.pofoland.config.tiles;

import java.util.List;

import org.apache.tiles.Attribute;
import org.apache.tiles.AttributeContext;
import org.apache.tiles.preparer.ViewPreparer;
import org.apache.tiles.request.Request;
import org.springframework.beans.factory.annotation.Autowired;

import com.hst.pofoland.biz.menu.domain.Menu;
import com.hst.pofoland.biz.menu.service.MenuService;

/**
 * Menu Preparer for tiles layout
 *
 * @author HG
 * @since 2018. 8. 4.
 * @see
 *
 */
public class MenuPreparer implements ViewPreparer {
    
    @Autowired
    private MenuService menuService;
    
    @Override
    public void execute(Request tilesContext, AttributeContext attributeContext) {
        List<Menu> menus = menuService.findMenusHierarchy();
        
        attributeContext.putAttribute("menus", new Attribute(menus), true);
    }
    
}
