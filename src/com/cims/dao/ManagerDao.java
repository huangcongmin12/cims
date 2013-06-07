package com.cims.dao;

import com.cims.common.dao.BaseDao;
import com.cims.domain.Manager;

/**
 * CIMS SystemManagerDao
 *
 * @author huangcongmin
 * @version , 2013-5-18
 * @since
 */
public interface ManagerDao extends BaseDao<Manager> {

	Manager findByUserName(String userName);

	Manager findByManagerNum(String managerNumber);
	
}
