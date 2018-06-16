package com.hst.pofoland.config.properties;

import org.springframework.boot.context.properties.ConfigurationProperties;

import lombok.Getter;
import lombok.Setter;

/**
 * 데이터베이스 프로퍼티
 * 
 * @author leehyungyu
 */
@ConfigurationProperties(prefix = "spring.datasource")
@Getter
@Setter
public class DatabaseProperties {

    /**
     * 드라이버 클래스
     */
    private String driverClassName;
    
    /**
     * 접속 URL 
     */
    private String url;
    
    /**
     * 사용자명
     */
    private String username;
    
    /**
     * 사용자 패스워드
     */
    private String password;
    
    /**
     * 접속 타임아웃
     */
    private int connectionTimeout;
    
    /**
     * 커넥션풀 최대 갯수
     */
    private int maximumPoolSize;
    
}
