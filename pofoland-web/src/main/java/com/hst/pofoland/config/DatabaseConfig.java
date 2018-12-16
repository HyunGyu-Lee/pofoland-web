package com.hst.pofoland.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Lazy;
import org.springframework.context.annotation.Profile;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.hst.pofoland.config.properties.DatabaseProperties;
import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;

/**
 * 데이터베이스 설정
 * 
 * @author leehyungyu
 */
@Configuration
@Lazy
@EnableTransactionManagement
public class DatabaseConfig {

    @Autowired
    private DatabaseProperties databaseProperties;
    
    @Bean
    @Profile("local")
    public DataSource dataSource() {
        HikariConfig config = new HikariConfig();
        config.setDriverClassName(databaseProperties.getDriverClassName());
        config.setJdbcUrl(databaseProperties.getUrl());
        config.setUsername(databaseProperties.getUsername());
        config.setPassword(databaseProperties.getPassword());
        
        return new HikariDataSource(config);
    }
    
}
