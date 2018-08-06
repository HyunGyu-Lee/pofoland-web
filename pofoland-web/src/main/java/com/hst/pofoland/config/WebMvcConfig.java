/**
 * 
 */
package com.hst.pofoland.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

/**
 * Web Mvc Configuration
 * 
 * @author 이현규
 * @since 2018. 6. 10.
 * @see
 *
 */
@Configuration
public class WebMvcConfig extends WebMvcConfigurerAdapter {
    
    @Override
    public void addViewControllers(ViewControllerRegistry registry) {
        registry.addViewController("/").setViewName("forward:/portfolio/management");
    }
    
}
