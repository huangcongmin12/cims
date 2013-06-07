package com.cims.service;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.cims.domain.Classroom;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "/applicationContext.xml")
public class ClassroomServiceTest {

	@Autowired
	private ClassroomService classroomService;

	@Test
	public void testFindByNoCourse() {
		List<Classroom> roomList = classroomService.findByNoCourse(5, 4, 1, 1, 3);
		System.out.println(" ==============="+roomList.size());
		for(Classroom cr : roomList) {
			System.out.println(cr.getId() + "\n" + cr.getAlias() + "\n" + cr.getBuilding() + "\n" + cr.getFloor() + "\n" + cr.getNumber());
		}
	}
	
	@Test
	public void testFindByNoCourseCount() {
		System.out.println(classroomService.findByNoCourseCount(5, 4, 1));
	}
}
