/**
 * HST Inc. | https://www.hst.com
 * Copyright (c)2018, HST Inc.
 * All rights reserved.
 */
package com.hst.pofoland.common.batch;

import org.springframework.batch.core.Job;
import org.springframework.batch.core.JobParameters;
import org.springframework.batch.core.configuration.annotation.JobBuilderFactory;
import org.springframework.batch.core.configuration.annotation.StepBuilderFactory;
import org.springframework.batch.core.launch.support.SimpleJobLauncher;
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
public abstract class AbstractBatchJob implements InitializingBean {

    @Autowired
    protected JobBuilderFactory jobBuilderFactory;

    @Autowired
    protected StepBuilderFactory stepBuilderFactory;

    @Autowired
    private SimpleJobLauncher jobLauncher;
    
    private Job runnableJob;
    
    /**
     * Batch Job 구현
     * 
     * 상속받는 클래스에서 Job, Step 팩토리를 이용해 수행할 Job 생성
     * 
     * @param jobBuilderFactory
     * @param stepBuilderFactory
     * @return
     */
    protected abstract Job buildBatchJob(JobBuilderFactory jobBuilderFactory, StepBuilderFactory stepBuilderFactory);
    
    @Override
    public void afterPropertiesSet() throws Exception {
        if (runnableJob == null) {
            this.runnableJob = buildBatchJob(jobBuilderFactory, stepBuilderFactory);
        }
    }
    
    public void launch(JobParameters parameters) throws BatchJobException {
        try {
            jobLauncher.run(runnableJob, parameters);
        } catch (Exception e) {
            throw new BatchJobException(e);
        }
    }
    
}
