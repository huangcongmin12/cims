package com.cims.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cims.dao.ClassroomManagerDao;
import com.cims.domain.ClassroomManager;
import com.cims.service.ClassroomManagerService;

/**
 * CIMS ClassroomManagerServiceImpl
 *
 * @author huangcongmin
 * @version , 2013-5-18
 * @since
 */
@Service
public class ClassroomManagerServiceImpl implements ClassroomManagerService {
	
	@Autowired
	private ClassroomManagerDao cmDao;

	public ClassroomManager get(Long id) {
		return cmDao.get(ClassroomManager.class, id);
	}

	public Long save(ClassroomManager classroomManager) {
		return (Long) cmDao.save(classroomManager);
	}

	public void update(ClassroomManager classroomManager) {
		cmDao.update(classroomManager);
	}

	public void delete(Long id) {
		cmDao.delete(ClassroomManager.class, id);
	}

	public int getCount() {
		String hql = "select count(*) from ClassroomManager";
		return cmDao.getCount(hql);
	}

	public List<ClassroomManager> list(int index, int size) {
		String hql = "from ClassroomManager";
		return cmDao.list(index, size, hql);
	}

}
