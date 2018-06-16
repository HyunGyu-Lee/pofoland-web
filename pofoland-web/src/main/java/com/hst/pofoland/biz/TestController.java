/**
 * 
 */
package com.hst.pofoland.biz;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * 
 * 시스템명 : 포트폴리오 관리 시스템
 * com.hst.pofoland.biz.TestController.java
 * 클래스 설명 : 클래스에 설명을 적는다.
 *
 * @author 이현규
 * @since 2018. 6. 16.
 * @version 1.0.0
 * @see
 *
 * <pre>
 * << 개정이력(Modification Information) >>
 *
 * 수정일          수정자         수정내용
 * -------------------------------------------------
 * 2018. 6. 16.     이현규         최초생성
 * </pre>
 */
@Controller
public class TestController {

    @GetMapping("hello")
    public String index() {
        return "main/main";
    }
    
}
