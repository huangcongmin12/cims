package com.cims.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cims.dao.CourseDao;
import com.cims.domain.Course;
import com.cims.service.CourseService;

/**
 * CIMS CourseServiceImpl
 * 
 * @author huangcongmin
 * @version , 2013-5-18
 * @since
 */
@Service
public class CourseServiceImpl implements CourseService {

	@Autowired
	private CourseDao courseDao;

	public Course get(Long id) {
		return courseDao.get(Course.class, id);
	}

	public Long save(Course course) {
		return (Long) courseDao.save(course);
	}

	public void update(Course course) {
		courseDao.update(course);
	}

	public void delete(Long id) {
		courseDao.delete(Course.class, id);
	}

	public int getCount() {
		String hql = "select count(*) from Course";
		return courseDao.getCount(hql);
	}

	public List<Course> list(int index, int size) {
		String hql = "from Course";
		return courseDao.list(index, size, hql);
	}

	public Course findByCourseNumber(String courseNumber) {
		if (courseNumber == null)
			return null;
		return courseDao.findByCourseNumber(courseNumber);
	}

	public List<Course> getAll() {
		return courseDao.getAll();
	}

}
