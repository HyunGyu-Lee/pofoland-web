/**
 * 
 */
package com.hst.pofoland.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.filter.HiddenHttpMethodFilter;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

import com.hst.pofoland.common.mvc.filter.MethodOverrideHandlerFilter;

import lombok.extern.slf4j.Slf4j;

/**
 * Web Mvc Configuration
 * 
 * @author 이현규
 * @since 2018. 6. 10.
 * @see
 *
 */
@Configuration
@Slf4j
public class WebMvcConfig extends WebMvcConfigurerAdapter {
    
    @Value("${spring.webservice.intro}")
    private String introPage;
    
    @Override
    public void addViewControllers(ViewControllerRegistry registry) {
        log.debug("regist intro page on {}", introPage);
        registry.addRedirectViewController("/", introPage);
    }
    
    @Bean
    public HiddenHttpMethodFilter hiddenHttpMethodFilter() {
        HiddenHttpMethodFilter hiddenHttpMethodFilter = new HiddenHttpMethodFilter();
        return hiddenHttpMethodFilter;
    }
    
    @Bean
    public MethodOverrideHandlerFilter methodOverrideHandlerFilter() {
        MethodOverrideHandlerFilter methodOverrideHandlerFilter = new MethodOverrideHandlerFilter();
        return methodOverrideHandlerFilter;
    }
    
    @Bean
    public FilterRegistrationBean xMethodOverrideHandlerFilter(MethodOverrideHandlerFilter methodOverrideHandlerFilter) {
        FilterRegistrationBean filterRegist = new FilterRegistrationBean();
        filterRegist.setFilter(methodOverrideHandlerFilter);
        filterRegist.addUrlPatterns("/*");
        return filterRegist;
    }
    
}
