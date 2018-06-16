package com.hst.pofoland.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

@Configuration
@EnableSwagger2
public class SwaggerConfig {

    /**
     * Application API Information
     * 
     * @return
     */
    private ApiInfo apiInfo() {
        ApiInfo apiInfo = new ApiInfo("API Documentation",
                "API Documentation for Trip Store",
                "1.0.0",
                "http://tripstore.hst.com",
                "gusrb0808@naver.com",
                "Apache 2.0",
                "http://www.apache.org/licenses/LICENSE-2.0.html");
        
        return apiInfo;
    }
    
    /**
     * API Handling Bean
     * 
     * @return
     */
    @Bean
    public Docket api() {
        Docket api = new Docket(DocumentationType.SWAGGER_2)
                .select()
                .apis(RequestHandlerSelectors.basePackage("com.hst.tripstore.biz"))
                .paths(PathSelectors.any())
                .build()
                .apiInfo(apiInfo());
        
        return api;
    }
    
}
