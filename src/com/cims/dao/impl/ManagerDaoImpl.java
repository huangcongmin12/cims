package com.cims.dao.impl;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import com.cims.common.dao.impl.BaseDaoImpl;
import com.cims.dao.ManagerDao;
import com.cims.domain.Manager;

/**
 * CIMS SystemManagerDaoImpl
 *
 * @author huangcongmin
 * @version , 2013-5-18
 * @since
 */
@Repository
public class ManagerDaoImpl extends BaseDaoImpl<Manager> implements
		ManagerDao {

	public Manager findByUserName(String userName) {
		String hql = "from Manager m where m.userName=?";
		Session session = this.getSession();
		Query query = session.createQuery(hql);
		query.setParameter(0, userName);
		query.setMaxResults(1);
		return (Manager) query.uniqueResult();
	}

	public Manager findByManagerNum(String managerNumber) {
		String hql = "from Manager m where m.managerNumber=?";
		Session session = this.getSession();
		Query query = session.createQuery(hql);
		query.setParameter(0, managerNumber);
		query.setMaxResults(1);
		return (Manager) query.uniqueResult();
	}


}
