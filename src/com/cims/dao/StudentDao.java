package com.cims.dao;

import com.cims.common.dao.BaseDao;
import com.cims.domain.Student;

/**
 * CIMS StudentDao
 *
 * @author huangcongmin
 * @version , 2013-5-17
 * @since
 */
public interface StudentDao extends BaseDao<Student> {
	
	Student findByUserName(String userName);

	Student findByStudentNum(String studentNumber);

}
