package com.cims.service;

import java.util.List;

import com.cims.domain.Teacher;

/**
 * CIMS TeacherService
 *
 * @author huangcongmin
 * @version , 2013-5-18
 * @since
 */
public interface TeacherService {

	Teacher get(Long id);

	Long save(Teacher teacher);

	void update(Teacher teacher);

	void delete(Long id);

	int getCount();

	List<Teacher> list(int index, int size);

	Teacher findByUserName(String userName);

	Teacher findByTeacherNum(String teacherNumber);

	List<Teacher> getAll();
}
