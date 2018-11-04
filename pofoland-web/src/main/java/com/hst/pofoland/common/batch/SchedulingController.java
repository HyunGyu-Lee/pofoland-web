/**
 * HST Inc. | https://www.hst.com
 * Copyright (c)2018, HST Inc.
 * All rights reserved.
 */
package com.hst.pofoland.common.batch;

import org.springframework.batch.core.JobParameters;
import org.springframework.batch.core.JobParametersBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;

/**
 * 클래스에 설명을 적는다.
 *
 * @author HG
 * @since 2018. 11. 4.
 * @see
 *
 */
public class SchedulingController {

    @Autowired
    private TestJob testJob;
    
    @Scheduled(cron = "0/5 * * ? * ?")
    public void run() {
        JobParameters param = new JobParametersBuilder().addString("JobID", String.valueOf(System.currentTimeMillis()))
                .toJobParameters();
        
        try {
            testJob.launch(param);
        } catch (BatchJobException e) {
            e.printStackTrace();
        }
    }
    
}
