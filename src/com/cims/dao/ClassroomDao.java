package com.cims.dao;

import java.util.List;

import com.cims.common.dao.BaseDao;
import com.cims.domain.Classroom;

/**
 * CIMS ClassroomDao
 *
 * @author huangcongmin
 * @version , 2013-5-18
 * @since
 */
public interface ClassroomDao extends BaseDao<Classroom> {

	Classroom findByAlias(String alias);

	List<Classroom> findByNoCourse(int weekNumber, int week,int schoolTime, int index, int size);

	int findByNoCourseCount(int weekNumber, int week, int schoolTime);

	List<Classroom> getAllRoom();

}
