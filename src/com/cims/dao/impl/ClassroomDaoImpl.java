package com.cims.dao.impl;

import java.util.List;

import org.hibernate.Hibernate;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import com.cims.common.dao.impl.BaseDaoImpl;
import com.cims.dao.ClassroomDao;
import com.cims.domain.Classroom;

/**
 * CIMS ClassroomDaoImpl
 * 
 * @author huangcongmin
 * @version , 2013-5-18
 * @since
 */
@Repository
public class ClassroomDaoImpl extends BaseDaoImpl<Classroom> implements
		ClassroomDao {

	@SuppressWarnings("unchecked")
	public List<Classroom> getAllRoom() {
		String sql = "select * from classroom";
		Query query = this.getSessionFactory().getCurrentSession().createSQLQuery(sql).addEntity(Classroom.class);
		return  query.list();
	}
	
	public Classroom findByAlias(String alias) {
		String hql = "from Classroom c where c.alias=?";
		Session session = this.getSession();
		Query query = session.createQuery(hql);
		query.setParameter(0, alias);
		query.setMaxResults(1);
		return (Classroom) query.uniqueResult();
	}

	/**
	 * 根据条件查询可供自习的教室
	 *
	 * @author huangcongmin
	 * @date 2013-6-4
	 * @param weekNumber
	 * @param week
	 * @param schoolTime
	 * @param index
	 * @param size
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<Classroom> findByNoCourse(int weekNumber, int week,
			int schoolTime, int index, int size) {
		String sql = "SELECT * FROM classroom croom WHERE croom.id not IN "
				+ "(SELECT cr.id from classroom cr INNER JOIN course c  WHERE c.classroom_id = cr.id AND c.startWeek<"
				+ weekNumber + " AND c.endWeek>" + weekNumber + " AND c.`week`=" + week + " AND c.schoolTime=" + schoolTime + ")"
				+ "AND croom.`status` = 0 AND croom.isMultimedia=0 LIMIT " + (index - 1) * size + "," + size;
		Session session = this.getSessionFactory().getCurrentSession();
		Query query = session.createSQLQuery(sql).addEntity(Classroom.class);
		return query.list();
	}

	public int findByNoCourseCount(int weekNumber, int week, int schoolTime) {
		String sql = "SELECT COUNT(*) AS count FROM classroom croom WHERE croom.id not IN "
				+ "(SELECT cr.id from classroom cr INNER JOIN course c  WHERE c.classroom_id = cr.id AND c.startWeek<"
				+ weekNumber + " AND c.endWeek>" + weekNumber + " AND c.`week`=" + week + " AND c.schoolTime=" + schoolTime + ")"
				+ "AND croom.`status` = 0 AND croom.isMultimedia=0";
		Session session = this.getSessionFactory().getCurrentSession();
		Integer count = (Integer) session.createSQLQuery(sql).addScalar("count", Hibernate.INTEGER).uniqueResult();
		return count;
	}

}
