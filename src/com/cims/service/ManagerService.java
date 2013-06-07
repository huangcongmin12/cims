package com.cims.service;

import java.util.List;

import com.cims.domain.Manager;

/**
 * CIMS SystemManagerService
 * 
 * @author huangcongmin
 * @version , 2013-5-18
 * @since
 */
public interface ManagerService {
	
	Manager get(Long id);

	Long save(Manager systemManager);

	void update(Manager systemManager);

	void delete(Long id);

	int getCount();

	List<Manager> list(int index, int size);

	Manager findByUserName(String userName);

	Manager findByManagerNum(String managerNumber);

	boolean login(String username, String password);
}
