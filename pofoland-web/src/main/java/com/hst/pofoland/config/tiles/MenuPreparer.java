/**
 * 
 */
package com.hst.pofoland.config.tiles;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.tiles.Attribute;
import org.apache.tiles.AttributeContext;
import org.apache.tiles.preparer.ViewPreparer;
import org.apache.tiles.request.Request;
import org.springframework.beans.factory.annotation.Autowired;

import com.hst.pofoland.biz.menu.service.MenuService;

import lombok.extern.slf4j.Slf4j;

/**
 * Menu Preparer for tiles layout
 *
 * @author HG
 * @since 2018. 8. 4.
 * @see
 *
 */
@Slf4j
public class MenuPreparer implements ViewPreparer {
    
    @Autowired
    private MenuService menuService;
    
    @Override
    public void execute(Request tilesContext, AttributeContext attributeContext) {
        List<Map<String, String>> menus = new ArrayList<>();
        
        log.debug("{}", menuService);
        
        // TODO 메뉴 DB조회
        for (int i = 0; i < 5; i++) {
            Map<String, String> menu = new HashMap<>();
            menu.put("menuNm", "메뉴" + (i + 1));
            menu.put("menuUrl", "url" + i);
            
            menus.add(menu);
        }
        
        attributeContext.putAttribute("menus", new Attribute(menus), true);
    }
    
}
