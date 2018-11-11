/**
 * 
 */
package com.hst.pofoland.common.batch.jobs;

import org.springframework.batch.core.Job;
import org.springframework.batch.core.JobParameters;
import org.springframework.batch.core.JobParametersBuilder;
import org.springframework.batch.core.configuration.annotation.JobBuilderFactory;
import org.springframework.batch.core.configuration.annotation.StepBuilderFactory;
import org.springframework.stereotype.Component;

/**
 * Note class information
 *
 * @author HG
 * @since 2018. 11. 11.
 * @see
 *
 */
@Component
public class CareerInfoCrawlBatch extends AbstractBatch {

    @Override
    protected Job buildBatchJob(JobBuilderFactory jobBuilderFactory, StepBuilderFactory stepBuilderFactory) {
        return null;
    }

    @Override
    protected JobParameters buildBatchParameters(JobParametersBuilder jobParameterBuilder) {
        return jobParameterBuilder.addString("JobID", String.valueOf(System.currentTimeMillis())).toJobParameters();
    }

}
