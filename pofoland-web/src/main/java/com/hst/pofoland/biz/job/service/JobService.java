package com.hst.pofoland.biz.job.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hst.pofoland.biz.job.dao.JobDAO;
import com.hst.pofoland.biz.job.domain.Job;
import com.hst.pofoland.common.mvc.service.CommonService;

@Service
public class JobService extends CommonService{
	
	private JobDAO jobDao;
	
	@Autowired
	public JobService(JobDAO jobDao) {
		this.jobDao = jobDao;
	}
	
	public List<Job> selectAll() {
		return jobDao.selectAll();
	}
}
