package com.cims.web;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.cims.service.CourseService;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
@Controller
@ParentPackage(value = "struts-default")
@Namespace(value = "/student")
@Results({
		@Result(name = "search", location = "/WEB-INF/content/default/student/search-course.jsp"),
		@Result(name = "search-succ", location = "/WEB-INF/content/default/student/search-course-show.jsp") })
public class CourseSearchController extends ActionSupport {

	@Autowired
	private CourseService courseService;
	private String courseNumber;

	@Action(value = "to-search-course")
	public String toSearchClassroom() {
		ServletActionContext.getRequest().setAttribute("courseList", courseService.getAll());
		return "search";
	}

	@Action(value = "search-course")
	public String searchClassroom() {
		if (courseNumber == "" || courseNumber == null) {
			ServletActionContext.getRequest().setAttribute("errorMsg", "请选择课程编号。");
			ServletActionContext.getRequest().setAttribute("courseList", courseService.getAll());
			return "search";
		}
		ServletActionContext.getRequest().setAttribute("course", courseService.findByCourseNumber(courseNumber));
		return "search-succ";
	}

	public String getCourseNumber() {
		return courseNumber;
	}

	public void setCourseNumber(String courseNumber) {
		this.courseNumber = courseNumber;
	}

}
