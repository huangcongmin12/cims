package com.cims.dao;

import java.util.List;

import com.cims.common.dao.BaseDao;
import com.cims.domain.Course;

/**
 * CIMS Course
 *
 * @author huangcongmin
 * @version , 2013-5-18
 * @since
 */
public interface CourseDao extends BaseDao<Course> {

	Course findByCourseNumber(String courseNumber);

	List<Course> getAll();

}
