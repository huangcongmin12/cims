package com.cims.domain;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * CIMS Course
 * 
 * @author huangcongmin
 * @version , 2013-5-18
 * @since
 */
@Entity
@Table(name = "course")
@SuppressWarnings("serial")
public class Course implements Serializable {

	private Long id;
	private String courseNumber;
	private String courseName;
	private String alias;
	private Integer startWeek;
	private Integer endWeek;
	private Integer week;
	private Integer schoolTime;
	private Teacher teacher;
	private Classroom classroom;

	public Course() {
	}

	@Id
	@GeneratedValue
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	@Column(name = "courseNumber", length = 20)
	public String getCourseNumber() {
		return courseNumber;
	}

	public void setCourseNumber(String courseNumber) {
		this.courseNumber = courseNumber;
	}

	@Column(name = "courseName", length = 60, nullable = false)
	public String getCourseName() {
		return courseName;
	}

	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}

	@Column(name = "alias", length = 20)
	public String getAlias() {
		return alias;
	}

	public void setAlias(String alias) {
		this.alias = alias;
	}

	@ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinColumn(name = "teacher_id")
	public Teacher getTeacher() {
		return teacher;
	}

	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}

	@ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinColumn(name = "classroom_id")
	public Classroom getClassroom() {
		return classroom;
	}

	public void setClassroom(Classroom classroom) {
		this.classroom = classroom;
	}

	@Column(name = "startWeek", length = 1)
	public Integer getStartWeek() {
		return startWeek;
	}

	public void setStartWeek(Integer startWeek) {
		this.startWeek = startWeek;
	}

	@Column(name = "endWeek", length = 1)
	public Integer getEndWeek() {
		return endWeek;
	}

	public void setEndWeek(Integer endWeek) {
		this.endWeek = endWeek;
	}

	@Column(name = "week", length = 5)
	public Integer getWeek() {
		return week;
	}

	public void setWeek(Integer week) {
		this.week = week;
	}

	@Column(name = "schoolTime", length = 5)
	public Integer getSchoolTime() {
		return schoolTime;
	}

	public void setSchoolTime(Integer schoolTime) {
		this.schoolTime = schoolTime;
	}

}
