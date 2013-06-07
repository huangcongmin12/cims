package com.cims.service;

import java.util.List;

import com.cims.domain.ClassroomManager;

/**
 * CIMS ClassroomManagerService
 *
 * @author huangcongmin
 * @version , 2013-5-18
 * @since
 */
public interface ClassroomManagerService {
	
	ClassroomManager get(Long id);

	Long save(ClassroomManager classroomManager);

	void update(ClassroomManager classroomManager);

	void delete(Long id);

	int getCount();

	List<ClassroomManager> list(int index, int size);

}
