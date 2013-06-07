package com.cims.service;

import java.util.List;

import com.cims.domain.Student;

/**
 * CIMS StudentService
 * 
 * @author huangcongmin
 * @version , 2013-5-17
 * @since
 */
public interface StudentService {

	Student get(Long id);

	Long save(Student student);

	void update(Student student);

	void delete(Long id);

	int getCount();

	List<Student> list(int index, int size);
	
	Student findByUserName(String userName);

	Student findByStudentNum(String studentNumber);

	boolean login(String username, String password);

}
