/**
 * HST Inc. | https://www.hst.com
 * Copyright (c)2018, HST Inc.
 * All rights reserved.
 */
package com.hst.pofoland;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.hst.pofoland.biz.menu.domain.Menu;
import com.hst.pofoland.biz.menu.service.MenuService;
import com.hst.pofoland.common.utils.CollectionUtils;

import lombok.extern.slf4j.Slf4j;

/**
 * 메뉴 관련 JUnit 테스트
 *
 * @author HG
 * @since 2018. 8. 6.
 * @see
 *
 */
@RunWith(SpringRunner.class)
@SpringBootTest
@Slf4j
public class MenuTest {

    @Autowired
    private MenuService menuService;
    
    private Menu entityCondition;
    
    @Before
    public void setUp() {
        entityCondition = new Menu();
    }
    
    @Test
    public void 계층형_메뉴구조_조회_테스트() {
        List<Menu> menus = menuService.findMenusHierarchy();
        
        log.debug("DB에서 조회된 메뉴 목록");
        for (Menu menu : menus) {
            log.debug("{}", menu);
        }
        
        // 계층구조로 변환
        menus = CollectionUtils.flatToHierarchy(menus, 0, 1);
        
        log.debug("변환된 메뉴 목록");
        print(menus, 0);
    }
    
    private void print(List<Menu> menus, int depth) {
        String INDENT = "";
        for (int i = 0; i < depth; i++) INDENT += "    ";
        
        for (Menu menu : menus) {
            System.out.println(INDENT + menu);
            
            print(menu.getChild(), depth + 1);
        }
    }
    
}
