/**
 * 
 */
package com.hst.pofoland.common.batch.jobs.career;

import org.springframework.batch.core.ChunkListener;
import org.springframework.batch.core.Job;
import org.springframework.batch.core.JobParameters;
import org.springframework.batch.core.JobParametersBuilder;
import org.springframework.batch.core.configuration.annotation.JobBuilderFactory;
import org.springframework.batch.core.configuration.annotation.StepBuilderFactory;
import org.springframework.batch.core.scope.context.ChunkContext;
import org.springframework.batch.item.ItemReader;
import org.springframework.batch.item.NonTransientResourceException;
import org.springframework.batch.item.ParseException;
import org.springframework.batch.item.UnexpectedInputException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.hst.pofoland.common.batch.jobs.AbstractBatch;

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

    @Autowired
    private CareerInfoItemReader reader;
    
    @Autowired
    private CareerInfoItemWriter writer;
    
    @Override
    protected Job buildBatchJob(JobBuilderFactory jobBuilderFactory, StepBuilderFactory stepBuilderFactory) {
        return jobBuilderFactory.get("")
                .start(stepBuilderFactory.get("step")
                        .chunk(5)
                        .reader(reader)
                        .writer(writer)
                        .listener(new ChunkListener() {
                            @Override
                            public void beforeChunk(ChunkContext arg0) {
                            }
                            
                            @Override
                            public void afterChunkError(ChunkContext arg0) {
                            }
                            
                            @Override
                            public void afterChunk(ChunkContext arg0) {
                                reader.stop();
                            }
                        })
                        .build())
                .build();
    }

    @Override
    protected JobParameters buildBatchParameters(JobParametersBuilder jobParameterBuilder) {
        return jobParameterBuilder.addString("JobID", String.valueOf(System.currentTimeMillis())).toJobParameters();
    }

}
