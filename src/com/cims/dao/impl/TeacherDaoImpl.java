package com.cims.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import com.cims.common.dao.impl.BaseDaoImpl;
import com.cims.dao.TeacherDao;
import com.cims.domain.Teacher;

/**
 * CIMS TeacherDaoImpl
 *
 * @author huangcongmin
 * @version , 2013-5-18
 * @since
 */
@Repository
public class TeacherDaoImpl extends BaseDaoImpl<Teacher> implements TeacherDao {

	public Teacher findByUserName(String userName) {
		String hql = "from Teacher t where t.userName=?";
		Session session = this.getSession();
		Query query = session.createQuery(hql);
		query.setParameter(0, userName);
		query.setMaxResults(1);
		return (Teacher) query.uniqueResult();
	}

	public Teacher findByTeacherNum(String teacherNumber) {
		String hql = "from Teacher t where t.teacherNumber=?";
		Session session = this.getSession();
		Query query = session.createQuery(hql);
		query.setParameter(0, teacherNumber);
		query.setMaxResults(1);
		return (Teacher) query.uniqueResult();
	}

	@SuppressWarnings("unchecked")
	public List<Teacher> getAll() {
		Session session = this.getSessionFactory().getCurrentSession();
		Criteria criteria = session.createCriteria(Teacher.class);
		return criteria.list();
	}

}
