package com.cims.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cims.dao.StudentDao;
import com.cims.domain.Student;
import com.cims.service.StudentService;

/**
 * CIMS StudentServiceImpl
 * 
 * @author huangcongmin
 * @version , 2013-5-17
 * @since
 */
@Service
public class StudentServiceImpl implements StudentService {

	@Autowired
	private StudentDao studentDao;

	public Long save(Student student) {
		return (Long) studentDao.save(student);
	}

	public void update(Student student) {
		studentDao.update(student);
	}

	public void delete(Long id) {
		studentDao.delete(Student.class, id);
	}

	public Student get(Long id) {
		return studentDao.get(Student.class, id);
	}

	public int getCount() {
		String hql = "select count(*) from Student";
		return studentDao.getCount(hql);
	}

	public List<Student> list(int index, int size) {
		String hql = "from Student";
		return studentDao.list(index, size, hql);
	}

	public Student findByUserName(String userName) {
		if(userName == null) {
			return null;
		}
		return studentDao.findByUserName(userName);
	}

	public Student findByStudentNum(String studentNumber) {
		if(studentNumber == null) {
			return null;
		}
		return studentDao.findByStudentNum(studentNumber);
	}

	public boolean login(String username, String password) {
		Student student = studentDao.findByUserName(username);
		if (student != null && student.getPassword().equals(password)) {
			return true;
		}
		return false;
	}

}
