package com.cims.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import com.cims.common.dao.impl.BaseDaoImpl;
import com.cims.dao.CourseDao;
import com.cims.domain.Course;

/**
 * CIMS CourseDaoImpl
 *
 * @author huangcongmin
 * @version , 2013-5-18
 * @since
 */
@Repository
public class CourseDaoImpl extends BaseDaoImpl<Course> implements CourseDao {
	
	@Override
	public void update(Course course) {
		this.getHibernateTemplate().merge(course);
	};

	public Course findByCourseNumber(String courseNumber) {
		String hql = "from Course c where c.courseNumber=?";
		Session session = this.getSession();
		Query query = session.createQuery(hql);
		query.setParameter(0, courseNumber);
		query.setMaxResults(1);
		return (Course) query.uniqueResult();
	}

	@SuppressWarnings("unchecked")
	public List<Course> getAll() {
		String hql = "from Course";
		Session session = this.getSessionFactory().getCurrentSession();
		Query query = session.createQuery(hql);
		return query.list();
	}

}
