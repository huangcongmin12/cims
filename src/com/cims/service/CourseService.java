package com.cims.service;

import java.util.List;

import com.cims.domain.Course;

/**
 * CIMS CourseService
 *
 * @author huangcongmin
 * @version , 2013-5-18
 * @since
 */
public interface CourseService {
	
	Course get(Long id);

	Long save(Course course);

	void update(Course course);

	void delete(Long id);

	int getCount();

	List<Course> list(int index, int size);

	Course findByCourseNumber(String courseNumber);

	List<Course> getAll();
}
