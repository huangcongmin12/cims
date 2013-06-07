package com.cims.domain;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import com.cims.constant.Role;

/**
 * CIMS SystemManager
 * 
 * @author huangcongmin
 * @version , 2013-5-18
 * @since
 */
@SuppressWarnings("serial")
@Entity
@Table(name = "manager")
public class Manager implements Serializable {

	private Long id;
	private String managerNumber;
	private String userName;
	private String password;
	private String email;
	private Date lastTime;
	private String lastIp;
	private int status;
	private Role role;

	public Manager() {
	}

	@Id
	@GeneratedValue
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	@Column(name = "managerNumber", length = 30)
	public String getManagerNumber() {
		return managerNumber;
	}

	public void setManagerNumber(String managerNumber) {
		this.managerNumber = managerNumber;
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

	@Column(name = "email", length = 20)
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Column(name = "lastTime", length = 20)
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

	@Column(name = "status", length = 1)
	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	@Column(name = "role", length = 1)
	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

}
