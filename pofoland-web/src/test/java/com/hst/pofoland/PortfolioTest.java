/**
 * 
 */
package com.hst.pofoland;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.hst.pofoland.biz.portfolio.domain.Portfolio;
import com.hst.pofoland.biz.portfolio.domain.PortfolioHashTag;
import com.hst.pofoland.biz.portfolio.service.PortfolioService;

import lombok.extern.slf4j.Slf4j;

/**
 * 포트폴리오 테스트
 *
 * @author HG
 * @since 2018. 9. 16.
 * @see
 *
 */
@RunWith(SpringRunner.class)
@SpringBootTest
@Slf4j
public class PortfolioTest {

    @Autowired
    private PortfolioService portfolioService;
    
    @Before
    public void setUp() {}
    
    // @Test
    public void findOneTest() {
        Portfolio portfolio = portfolioService.findByPofolNo(108);
        
        log.debug("{}", portfolio);
    }
    
    @Test
    public void 인기해시태그_조회_테스트() {
        List<PortfolioHashTag> tags = portfolioService.findPopularityHashTag(10);
        
        tags.forEach(tag -> log.debug("{}", tag));
    }
    
    @Test
    public void 포트폴리오_목록_검색_테스트() {
        Portfolio search = new Portfolio();
        search.setPofolNm("해");
        
        List<Portfolio> portfolioList = portfolioService.findAll(search);
        
        portfolioList.forEach(portfolio -> log.debug("{}", portfolio));
    }
    
    @Test
    public void 포트폴리오_삭제_테스트() {
        portfolioService.delete(213);
    }
    
}
