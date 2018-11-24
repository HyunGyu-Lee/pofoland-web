package com.hst.pofoland;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.boot.autoconfigure.jdbc.DataSourceTransactionManagerAutoConfiguration;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.context.annotation.ComponentScan;

import com.hst.pofoland.config.properties.DatabaseProperties;

@SpringBootApplication
@EnableAutoConfiguration(exclude = { DataSourceTransactionManagerAutoConfiguration.class, 
                                     DataSourceAutoConfiguration.class })
@EnableConfigurationProperties({ DatabaseProperties.class })
@ComponentScan(basePackages = "com.hst.pofoland")
@EnableCaching
public class PofolandWebApplication {

	public static void main(String[] args) {
		SpringApplication.run(PofolandWebApplication.class, args);
	}
}
