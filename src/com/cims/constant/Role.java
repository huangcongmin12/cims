package com.cims.constant;

/**
 * CIMS Role
 * 
 * @author huangcongmin
 * @version , 2013-5-17
 * @since
 */
public enum Role {

	ADMIN("管理员"), SUPER_ADMIN("超级管理员"), CLASSROOM_ADMIN("教室管理员"), 
		STUDENT("学生用户"), TEACHER("教师用户"), TEST_ADMIN("测试管理员");

	private String value;

	Role(String value) {
		this.value = value;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	public String toString() {
		return this.value;
	}

}
