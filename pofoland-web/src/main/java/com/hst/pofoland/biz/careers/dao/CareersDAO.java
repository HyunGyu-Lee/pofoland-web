package com.hst.pofoland.biz.careers.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.hst.pofoland.biz.careers.domain.CareerInfo;
import com.hst.pofoland.common.mvc.dao.CommonDAO;

/**
 * TODO 주석
 * 
 * @author wkdtm
 */
@Mapper
public interface CareersDAO extends CommonDAO<String, CareerInfo> {
	
	/**
	 * TODO 주석 다셈
	 * 
	 * @return
	 */
	List<CareerInfo> selectAll();
	
}