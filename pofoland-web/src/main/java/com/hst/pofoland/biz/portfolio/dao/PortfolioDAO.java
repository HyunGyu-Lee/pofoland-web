/**
 * HST Inc. | https://www.hst.com
 * Copyright (c)2018, HST Inc.
 * All rights reserved.
 */
package com.hst.pofoland.biz.portfolio.dao;

import org.apache.ibatis.annotations.Mapper;

import com.hst.pofoland.biz.portfolio.domain.Portfolio;
import com.hst.pofoland.common.mvc.dao.CommonDAO;

/**
 * 포트폴리오 관리 DAO
 *
 * @author HG
 * @since 2018. 7. 22.
 * @see
 *
 */
@Mapper
public interface PortfolioDAO extends CommonDAO<Integer, Portfolio> {
}
