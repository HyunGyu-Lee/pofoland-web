/**
 * HST Inc. | https://www.hst.com
 * Copyright (c)2018, HST Inc.
 * All rights reserved.
 */
package com.hst.pofoland.common.batch.jobs.career;

import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

import org.springframework.batch.item.ItemReader;
import org.springframework.batch.item.NonTransientResourceException;
import org.springframework.batch.item.ParseException;
import org.springframework.batch.item.UnexpectedInputException;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.hst.pofoland.biz.career.domain.Career;
import com.hst.pofoland.biz.career.service.CareerService;

import lombok.extern.slf4j.Slf4j;

/**
 * 클래스에 설명을 적는다.
 *
 * @author HG
 * @since 2018. 11. 11.
 * @see
 *
 */
@Component
@Slf4j
public class CareerInfoItemReader implements ItemReader<Career>, InitializingBean {
	
    private boolean stopSignal = false;
    
    private List<Career> careerList;
    
    private AtomicInteger index = new AtomicInteger(0);
    
    @Autowired
    CareerService careerService;
    
    @Override
    public Career read() throws Exception, UnexpectedInputException, ParseException, NonTransientResourceException {
    	if (stopSignal) {
            return null;
        }
        
        if (index.get() == careerList.size()) {
        	return null;
        }
        
        Career career = careerList.get(index.getAndIncrement());
    	log.debug("Reader > read 호출 {}", career);
        
        return career;
    }
    
    public void stop() {
        this.stopSignal = true;
    }

	@Override
	public void afterPropertiesSet() throws Exception {
		careerList =  careerService.careerSearch("").getCareers().getCareer();
		
    	log.debug("Reader 초기화 대상 데이터 : {}", careerList);
	}
    
}
