package com.cims.domain;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * CIMS Classroom
 * 
 * @author huangcongmin
 * @version , 2013-5-18
 * @since
 */
@SuppressWarnings("serial")
@Entity
@Table(name = "classroom")
public class Classroom implements Serializable {

	private Long id;
	private String building;
	private Integer floor;
	private String number;
	private String alias;
	private int containment;
	private int isMultimedia;
	private int status;
	private Set<Course> courses = new HashSet<Course>();

	public Classroom() {
	}

	@Id
	@GeneratedValue
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	
	@Column(name = "building", length = 10, nullable = false)
	public String getBuilding() {
		return building;
	}

	public void setBuilding(String building) {
		this.building = building;
	}

	@Column(name = "containment", length = 5)
	public int getContainment() {
		return containment;
	}

	public void setContainment(int containment) {
		this.containment = containment;
	}

	@Column(name = "isMultimedia", length = 1)
	public int getIsMultimedia() {
		return isMultimedia;
	}

	public void setIsMultimedia(int isMultimedia) {
		this.isMultimedia = isMultimedia;
	}

	@Column(name = "status", length = 1)
	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	@Column(name = "floor", length = 10)
	public Integer getFloor() {
		return floor;
	}

	public void setFloor(Integer floor) {
		this.floor = floor;
	}

	@Column(name = "number", length = 5, nullable = false)
	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	@Column(name = "alias", length = 20)
	public String getAlias() {
		return alias;
	}

	public void setAlias(String alias) {
		this.alias = alias;
	}


	@OneToMany(mappedBy = "classroom", cascade = CascadeType.ALL, fetch = FetchType.EAGER )
	public Set<Course> getCourses() {
		return courses;
	}

	public void setCourses(Set<Course> courses) {
		this.courses = courses;
	}

}
