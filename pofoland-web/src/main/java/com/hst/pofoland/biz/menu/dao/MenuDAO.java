/**
 * 
 */
package com.hst.pofoland.biz.menu.dao;

import org.apache.ibatis.annotations.Mapper;

import com.hst.pofoland.biz.menu.domain.Menu;
import com.hst.pofoland.common.mvc.dao.CommonDAO;

/**
 * 메뉴 DAO
 *
 * @author HG
 * @since 2018. 8. 4.
 * @see
 *
 */
@Mapper
public interface MenuDAO extends CommonDAO<String, Menu> {

}
