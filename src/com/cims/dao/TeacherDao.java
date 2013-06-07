package com.cims.dao;

import java.util.List;

import com.cims.common.dao.BaseDao;
import com.cims.domain.Teacher;

/**
 * CIMS TeacherDao
 *
 * @author huangcongmin
 * @version , 2013-5-18
 * @since
 */
public interface TeacherDao extends BaseDao<Teacher> {

	Teacher findByUserName(String userName);

	Teacher findByTeacherNum(String teacherNumber);

	List<Teacher> getAll();

}
