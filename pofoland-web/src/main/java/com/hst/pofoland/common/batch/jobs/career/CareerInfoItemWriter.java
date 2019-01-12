/**
 * HST Inc. | https://www.hst.com
 * Copyright (c)2018, HST Inc.
 * All rights reserved.
 */
package com.hst.pofoland.common.batch.jobs.career;

import java.util.List;

import org.springframework.batch.item.ItemWriter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.hst.pofoland.biz.careers.dao.CareersDAO;
import com.hst.pofoland.biz.careers.domain.CareerInfo;

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
public class CareerInfoItemWriter implements ItemWriter<CareerInfo> {

	@Autowired
	private CareersDAO careersDao;	

	@Override
    public void write(List<? extends CareerInfo> chunk) throws Exception {
		log.debug("Writer 호출 : {}", chunk);
		
        for (CareerInfo careerInfo : chunk) {
        	careersDao.create(careerInfo);
        }
    }

}
