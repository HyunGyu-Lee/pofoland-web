/**
 * HST Inc. | https://www.hst.com
 * Copyright (c)2018, HST Inc.
 * All rights reserved.
 */
package com.hst.pofoland.common.batch.jobs;

import org.springframework.batch.core.configuration.annotation.JobBuilderFactory;
import org.springframework.batch.core.configuration.annotation.StepBuilderFactory;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Batch Job 설정 Supporter 클래스
 * 
 * 현재는 Job, Step 빌더 autowiring만 지원하도록.
 * 차후에 batch 작업하면서 생기는 중복이나 기타사항들 기능 추가
 * 
 * @author HG
 * @since 2018. 11. 4.
 * @see
 *
 */
public abstract class JobConfigurer {

    @Autowired
    protected JobBuilderFactory jobBuilderFactory;

    @Autowired
    protected StepBuilderFactory stepBuilderFactory;

}