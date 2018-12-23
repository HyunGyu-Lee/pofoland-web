/**
 * HST Inc. | https://www.hst.com
 * Copyright (c)2018, HST Inc.
 * All rights reserved.
 */
package com.hst.pofoland.common.batch.jobs.career;

import java.util.List;

import org.springframework.batch.item.ItemWriter;
import org.springframework.stereotype.Component;

import com.hst.pofoland.biz.careers.dao.CareersDAO;
import com.hst.pofoland.biz.careers.domain.CareerInfo;

/**
 * 클래스에 설명을 적는다.
 *
 * @author HG
 * @since 2018. 11. 11.
 * @see
 *
 */
@Component
public class CareerInfoItemWriter implements ItemWriter<CareerInfo> {

	private CareersDAO careersDao;	

	@Override
	@SuppressWarnings("unchecked")
    public void write(List<? extends CareerInfo> e) throws Exception {
        careersDao.batchInsert((List<CareerInfo>) e);
    }

}
