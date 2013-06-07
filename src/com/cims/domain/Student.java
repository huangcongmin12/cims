package com.cims.domain;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import com.cims.constant.Role;
import com.cims.constant.Sex;

/**
 * CIMS Student
 * 
 * @author huangcongmin
 * @version , 2013-5-17
 * @since
 */
@SuppressWarnings("serial")
@Entity
@Table(name = "student")
public class Student implements Serializable {

	private Long id;
	private String studentNumber; 	// 学号
	private String name; 			// 姓名
	private Sex sex; 				// 性别
	private String userName; 		// 登录名
	private String password; 		// 登录密码
	private String email;			// 邮箱
	private String department; 		// 院系
	private String grade; 			// 年级
	private String classes; 		// 班级
	private Date lastTime; 			// 上次登录时间
	private String lastIp; 			// 上次登录IP
	private int status; 			// 状态
	private Role role; 				// 角色

	public Student() {
	}

	@Id
	@GeneratedValue
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	@Column(name = "studentNumber", length = 20, nullable = false)
	public String getStudentNumber() {
		return studentNumber;
	}

	public void setStudentNumber(String studentNumber) {
		this.studentNumber = studentNumber;
	}

	@Column(name = "name", length = 25)
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "sex", length = 3)
	public Sex getSex() {
		return sex;
	}

	public void setSex(Sex sex) {
		this.sex = sex;
	}

	@Column(name = "userName", length = 30, nullable = false)
	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	@Column(name = "password", length = 30, nullable = false)
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Column(name = "department", length = 30)
	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	@Column(name = "grade", length = 10)
	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	@Column(name = "classes", length = 50)
	public String getClasses() {
		return classes;
	}

	public void setClasses(String classes) {
		this.classes = classes;
	}

	@Column(name = "lastTime", length = 30)
	public Date getLastTime() {
		return lastTime;
	}

	public void setLastTime(Date lastTime) {
		this.lastTime = lastTime;
	}

	@Column(name = "lastIp", length = 20)
	public String getLastIp() {
		return lastIp;
	}

	public void setLastIp(String lastIp) {
		this.lastIp = lastIp;
	}

	@Column(name = "status", length = 2)
	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	@Column(name = "role", length = 10)
	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	@Column(name = "email", length = 20)
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

}
