/**
 * 
 */
package com.hst.pofoland.common.batch.service;

import org.springframework.batch.core.JobExecution;
import org.springframework.batch.core.JobParametersInvalidException;
import org.springframework.batch.core.launch.JobLauncher;
import org.springframework.batch.core.repository.JobExecutionAlreadyRunningException;
import org.springframework.batch.core.repository.JobInstanceAlreadyCompleteException;
import org.springframework.batch.core.repository.JobRestartException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hst.pofoland.common.batch.jobs.AbstractBatch;
import com.hst.pofoland.common.mvc.service.CommonService;

/**
 * Batch 관리 서비스
 *
 * @author HG
 * @since 2018. 11. 11.
 * @see
 *
 */
@Service
public class BatchManagementService extends CommonService {

    @Autowired
    private JobLauncher jobLauncher;
    
    /**
     * @param batchJob
     */
    public void launch(AbstractBatch batchJob) {
        boolean s = true;
        if (s) {
            return;
        }
        
        try {
            JobExecution e = jobLauncher.run(batchJob.getJob(), batchJob.getParameters());
        } catch (JobExecutionAlreadyRunningException e) {
            e.printStackTrace();
        } catch (JobRestartException e) {
            e.printStackTrace();
        } catch (JobInstanceAlreadyCompleteException e) {
            e.printStackTrace();
        } catch (JobParametersInvalidException e) {
            e.printStackTrace();
        }
    }

}
