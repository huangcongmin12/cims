package com.cims.service;

import java.util.List;

import com.cims.domain.Classroom;

/**
 * CIMS ClassroomService
 * 
 * @author huangcongmin
 * @version , 2013-5-18
 * @since
 */
public interface ClassroomService {

	Classroom get(Long id);

	Long save(Classroom classroom);

	void update(Classroom classroom);

	void delete(Long id);

	int getCount();

	List<Classroom> list(int index, int size);

	Classroom findByAlias(String alias);

	List<Classroom> findByNoCourse(int weekNumber, int week,int schoolTime, int index, int size);

	int findByNoCourseCount(int weekNumber, int week, int schoolTime);

	List<Classroom> getAll();

}
