package com.hst.pofoland.biz.job.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.hst.pofoland.biz.job.domain.Job;
import com.hst.pofoland.common.mvc.dao.CommonDAO;

@Mapper
public interface JobDAO extends CommonDAO<String, Job>{
	List<Job> selectAll();
}