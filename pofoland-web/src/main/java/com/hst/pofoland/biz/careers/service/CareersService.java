package com.hst.pofoland.biz.careers.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hst.pofoland.biz.careers.dao.CareersDAO;
import com.hst.pofoland.biz.careers.domain.CareerInfo;
import com.hst.pofoland.common.mvc.service.CommonService;

@Service
public class CareersService extends CommonService{
	
	private CareersDAO careersDao;
	
	@Autowired
	public CareersService(CareersDAO careersDao) {
		this.careersDao = careersDao;
	}
	
	public List<CareerInfo> selectAll() {
		return careersDao.selectAll();
	}
	
	public void batchInsert(List<CareerInfo> e) {
		careersDao.batchInsert(e);
	}
}
