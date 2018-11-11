/**
 * HST Inc. | https://www.hst.com
 * Copyright (c)2018, HST Inc.
 * All rights reserved.
 */
package com.hst.pofoland.common.batch.web;

import org.springframework.batch.core.launch.JobLauncher;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.hst.pofoland.common.batch.jobs.JobConfigurer;
import com.hst.pofoland.common.batch.service.BatchManagementService;
import com.hst.pofoland.common.mvc.domain.CommonApiResponse;
import com.hst.pofoland.common.mvc.web.CommonController;

import lombok.extern.slf4j.Slf4j;

/**
 * Batch 관리 컨트롤러
 *
 * @author HG
 * @since 2018. 11. 4.
 * @see
 *
 */
@RestController
@RequestMapping("/batch")
@Slf4j
public class BatchManagementController extends CommonController {

    @Autowired
    private BatchManagementService batchManagementService;
    
    @GetMapping("/launch")
    public CommonApiResponse runTestJob(@RequestParam String jobClassStr) {
        log.debug("request batch : {}", jobClassStr);
        
        try {
            Class<?> jobClass = Class.forName(jobClassStr);
            
            if (jobClass.isAssignableFrom(JobConfigurer.class)) {
                return badRequest("not applicable class type " + jobClassStr, null);
            }
            
            JobConfigurer batchJob = (JobConfigurer) contextProvider.getApplicationContext().getBean(jobClass);

            batchManagementService.launch(batchJob);
        } catch (ClassNotFoundException e) {
            return badRequest(e.getMessage(), null);
        }
        
        return ok("launch success", null);
    }

}
