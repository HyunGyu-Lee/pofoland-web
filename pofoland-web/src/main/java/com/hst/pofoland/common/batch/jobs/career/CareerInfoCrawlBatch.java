/**
 * 
 */
package com.hst.pofoland.common.batch.jobs.career;

import org.springframework.batch.core.Job;
import org.springframework.batch.core.JobParameters;
import org.springframework.batch.core.JobParametersBuilder;
import org.springframework.batch.core.Step;
import org.springframework.batch.core.configuration.annotation.JobScope;
import org.springframework.batch.item.ItemWriter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;

import com.hst.pofoland.biz.career.domain.Career;
import com.hst.pofoland.biz.careers.domain.CareerInfo;
import com.hst.pofoland.common.batch.jobs.JobConfigurer;

/**
 * Note class information
 *
 * @author HG
 * @since 2018. 11. 11.
 * @see
 *
 */
@Component
public class CareerInfoCrawlBatch extends JobConfigurer {

    @Autowired
    private CareerInfoItemReader reader;
    
    @Autowired
    private CareerInfoItemWriter writer;
    
    @Autowired
    private CareerInfoItemProcessor processor;
    
    @Bean("careerInfoCrawlBatchJob")
    public Job careerInfoCrawlBatch() {
        return jobBuilderFactory.get("")
                .start(step())
                .build();
    }
    
    @Bean
    @JobScope
    public Step step() {
        return stepBuilderFactory.get("step")
                   .<Career, CareerInfo>chunk(5)
                   .reader(reader)
                   .processor(processor)
                   .build();
    }
    
    public ItemWriter<CareerInfo> testWriter() {
    	return items -> {};
    }
    
    public JobParameters buildBatchParameters(JobParametersBuilder jobParameterBuilder) {
        return jobParameterBuilder.addString("JobID", String.valueOf(System.currentTimeMillis())).toJobParameters();
    }

}
