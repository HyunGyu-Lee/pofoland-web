/**
 * HST Inc. | https://www.hst.com
 * Copyright (c)2018, HST Inc.
 * All rights reserved.
 */
package com.hst.pofoland.common.batch.jobs;

import org.springframework.batch.core.Job;
import org.springframework.batch.core.JobParameters;
import org.springframework.batch.core.JobParametersBuilder;
import org.springframework.batch.core.configuration.annotation.JobBuilderFactory;
import org.springframework.batch.core.configuration.annotation.StepBuilderFactory;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Batch Job 추상 클래스
 * 
 * @author HG
 * @since 2018. 11. 4.
 * @see
 *
 */
public abstract class AbstractBatch implements InitializingBean {

    @Autowired
    protected JobBuilderFactory jobBuilderFactory;

    @Autowired
    protected StepBuilderFactory stepBuilderFactory;

    /**
     * 수행할 Job
     */
    private Job batchJob;
    
    /**
     * Job 파라미터
     */
    private JobParameters parameters;
    
    @Override
    public void afterPropertiesSet() throws Exception {
        this.batchJob = this.buildBatchJob(jobBuilderFactory, stepBuilderFactory);
        this.parameters = buildBatchParameters(new JobParametersBuilder());
    }
    
    /**
     * Build된 Spring Job 반환
     * 
     * @return
     */
    public Job getJob() {
        return this.batchJob;
    }
    
    /**
     * build된 Job수행에 사용할 Parameter 반환
     * 
     * @return the parameters
     */
    public JobParameters getParameters() {
        return parameters;
    }
    
    /**
     * Batch Job 정의
     * 
     * @param jobBuilderFactory
     * @param stepBuilderFactory
     * @return
     */
    protected abstract Job buildBatchJob(JobBuilderFactory jobBuilderFactory, StepBuilderFactory stepBuilderFactory);

    /**
     * Batch Job Parameter 정의
     * 
     * @param jobParameterBuilder
     * @return
     */
    protected abstract JobParameters buildBatchParameters(JobParametersBuilder jobParameterBuilder);
    
}
