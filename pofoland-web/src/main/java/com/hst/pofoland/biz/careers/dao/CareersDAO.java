package com.hst.pofoland.biz.careers.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.hst.pofoland.biz.careers.domain.CareerInfo;
import com.hst.pofoland.common.mvc.dao.CommonDAO;

@Mapper
public interface CareersDAO extends CommonDAO<String, CareerInfo>{
	List<CareerInfo> selectAll();
	void batchInsert(List<CareerInfo> e);
}