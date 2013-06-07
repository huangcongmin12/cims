package com.cims.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cims.dao.TeacherDao;
import com.cims.domain.Teacher;
import com.cims.service.TeacherService;

/**
 * CIMS TeacherServiceImpl
 * 
 * @author huangcongmin
 * @version , 2013-5-18
 * @since
 */
@Service
public class TeacherServiceImpl implements TeacherService {

	@Autowired
	private TeacherDao teacherDao;

	public Teacher get(Long id) {
		return teacherDao.get(Teacher.class, id);
	}

	public Long save(Teacher teacher) {
		return (Long) teacherDao.save(teacher);
	}

	public void update(Teacher teacher) {
		teacherDao.update(teacher);
	}

	public void delete(Long id) {
		teacherDao.delete(Teacher.class, id);
	}

	public int getCount() {
		String hql = "select count(*) from Teacher";
		return teacherDao.getCount(hql);
	}

	public List<Teacher> list(int index, int size) {
		String hql = "from Teacher";
		return teacherDao.list(index, size, hql);
	}

	public Teacher findByUserName(String userName) {
		if (userName == null) {
			return null;
		}
		return teacherDao.findByUserName(userName);
	}

	public Teacher findByTeacherNum(String teacherNumber) {
		if (teacherNumber == null) {
			return null;
		}
		return teacherDao.findByTeacherNum(teacherNumber);
	}

	public List<Teacher> getAll() {
		return teacherDao.getAll();
	}

}
