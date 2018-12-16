/**
 * HST Inc. | https://www.hst.com
 * Copyright (c)2018, HST Inc.
 * All rights reserved.
 */
package com.hst.pofoland;

import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.batch.test.JobLauncherTestUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.hst.pofoland.common.batch.jobs.career.CareerInfoCrawlBatch;
import com.hst.pofoland.common.batch.jobs.career.CareerInfoItemReader;
import com.hst.pofoland.common.batch.jobs.career.CareerInfoItemWriter;
import com.hst.pofoland.config.BatchJobConfig;

/**
 * 클래스에 설명을 적는다.
 *
 * @author HG
 * @since 2018. 11. 11.
 * @see
 *
 */
@SpringBootTest(classes = {
        CareerInfoCrawlBatch.class, 
        CareerInfoItemReader.class,
        CareerInfoItemWriter.class,
        BatchJobConfig.class,
        JobLauncherTestUtils.class
})
@RunWith(SpringRunner.class)
public class BatchTest {
    
    @Autowired
    private JobLauncherTestUtils jobLauncherTestUtils;
    
    @Test
    @Ignore
    public void 직업정보_수집배치_테스트() {
        try {
            jobLauncherTestUtils.launchJob();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
}
