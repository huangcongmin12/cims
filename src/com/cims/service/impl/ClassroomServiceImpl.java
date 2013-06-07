package com.cims.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cims.dao.ClassroomDao;
import com.cims.domain.Classroom;
import com.cims.service.ClassroomService;

/**
 * CIMS ClassroomServiceImpl
 * 
 * @author huangcongmin
 * @version , 2013-5-18
 * @since
 */
@Service
public class ClassroomServiceImpl implements ClassroomService {

	@Autowired
	private ClassroomDao classroomDao;

	public Classroom get(Long id) {
		return classroomDao.get(Classroom.class, id);
	}

	public Long save(Classroom classroom) {
		return (Long) classroomDao.save(classroom);
	}

	public void update(Classroom classroom) {
		classroomDao.update(classroom);

	}

	public void delete(Long id) {
		classroomDao.delete(Classroom.class, id);
	}

	public int getCount() {
		String hql = "select count(*) from Classroom";
		return classroomDao.getCount(hql);
	}

	public List<Classroom> list(int index, int size) {
		String hql = "from Classroom";
		return classroomDao.list(index, size, hql);
	}

	public Classroom findByAlias(String alias) {
		if (alias == null) {
			return null;
		}
		return classroomDao.findByAlias(alias);
	}

	public List<Classroom> findByNoCourse(int weekNumber, int week,
			int schoolTime, int index, int size) {
		return classroomDao.findByNoCourse(weekNumber, week, schoolTime, index,size);
	}

	public int findByNoCourseCount(int weekNumber, int week,int schoolTime) {
		return classroomDao.findByNoCourseCount(weekNumber, week, schoolTime);
	}

	public List<Classroom> getAll() {
		return classroomDao.getAllRoom();
	}

}
