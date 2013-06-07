package com.cims.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cims.dao.ManagerDao;
import com.cims.domain.Manager;
import com.cims.service.ManagerService;

/**
 * CIMS SystemManagerServiceImpl
 * 
 * @author huangcongmin
 * @version , 2013-5-18
 * @since
 */
@Service
public class ManagerServiceImpl implements ManagerService {

	@Autowired
	private ManagerDao managerDao;

	public Manager get(Long id) {
		return managerDao.get(Manager.class, id);
	}

	public Long save(Manager systemManager) {
		return (Long) managerDao.save(systemManager);
	}

	public void update(Manager systemManager) {
		managerDao.update(systemManager);
	}

	public void delete(Long id) {
		managerDao.delete(Manager.class, id);
	}

	public int getCount() {
		String hql = "select count(*) from Manager";
		return managerDao.getCount(hql);
	}

	public List<Manager> list(int index, int size) {
		String hql = "from Manager";
		return managerDao.list(index, size, hql);
	}

	public Manager findByUserName(String userName) {
		if (userName == null) {
			return null;
		}
		return managerDao.findByUserName(userName);
	}

	public Manager findByManagerNum(String managerNumber) {
		if (managerNumber == null) {
			return null;
		}
		return managerDao.findByManagerNum(managerNumber);
	}

	public boolean login(String username, String password) {
		Manager manager = managerDao.findByUserName(username);
		if (manager != null && manager.getPassword().equals(password)) {
			return true;
		}
		return false;
	}

}
