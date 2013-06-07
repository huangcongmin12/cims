package com.cims.dao.impl;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import com.cims.common.dao.impl.BaseDaoImpl;
import com.cims.dao.StudentDao;
import com.cims.domain.Student;

/**
 * CIMS StudentDaoImpl
 *
 * @author huangcongmin
 * @version , 2013-5-17
 * @since
 */
@Repository
public class StudentDaoImpl extends BaseDaoImpl<Student> implements StudentDao {

	public Student findByUserName(String userName) {
		String hql = "from Student s where s.userName=?";
		Session  session = this.getSession();
		Query query = session.createQuery(hql);
		query.setParameter(0, userName);
		// 做一些容错处理，因为毕竟没有在数据库中限定userName是唯一的。
		query.setMaxResults(1);
		return (Student) query.setCacheable(true).uniqueResult();
	}

	public Student findByStudentNum(String studentNumber) {
		String hql = "from Student s where s.studentNumber=?";
		Session  session = this.getSession();
		Query query = session.createQuery(hql);
		query.setParameter(0, studentNumber);
		// 做一些容错处理，因为毕竟没有在数据库中限定studentNumber是唯一的。
		query.setMaxResults(1);
		return (Student) query.setCacheable(true).uniqueResult();
	}
	
}
