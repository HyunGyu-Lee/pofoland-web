/**
 * HST Inc. | https://www.hst.com
 * Copyright (c)2018, HST Inc.
 * All rights reserved.
 */
package com.hst.pofoland.config;

import org.springframework.batch.core.configuration.annotation.DefaultBatchConfigurer;
import org.springframework.batch.core.configuration.annotation.EnableBatchProcessing;
import org.springframework.batch.core.launch.JobLauncher;
import org.springframework.batch.core.launch.support.SimpleJobLauncher;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;

import lombok.extern.slf4j.Slf4j;

/**
 * 배치 설정
 *
 * @author HG
 * @since 2018. 11. 4.
 * @see
 *
 */
@Configuration
@EnableBatchProcessing
@Slf4j
public class BatchJobConfig extends DefaultBatchConfigurer {

    @Bean
    public ThreadPoolTaskExecutor taskExecutor() {
        ThreadPoolTaskExecutor taskExecutor = new ThreadPoolTaskExecutor();
        taskExecutor.setCorePoolSize(10);
        taskExecutor.setMaxPoolSize(25);
        taskExecutor.setQueueCapacity(30);
        
        return taskExecutor;
    } 
    
    @Override
    protected JobLauncher createJobLauncher() throws Exception {
        SimpleJobLauncher jobLauncher = (SimpleJobLauncher) super.createJobLauncher();
        jobLauncher.setTaskExecutor(taskExecutor());
        
        return jobLauncher;
    }

}
