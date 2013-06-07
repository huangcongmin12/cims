package com.cims.web;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.cims.service.TeacherService;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
@Controller
@ParentPackage(value = "struts-default")
@Namespace(value = "/student")
@Results({
		@Result(name = "search", location = "/WEB-INF/content/default/student/search-teacher.jsp"),
		@Result(name = "search-succ", location = "/WEB-INF/content/default/student/search-teacher-show.jsp") })
public class TeacherSearchController extends ActionSupport {

	@Autowired
	private TeacherService teacherService;
	private String teacherNumber;

	@Action(value = "to-search-teacher")
	public String toSearchTeacher() {
		ServletActionContext.getRequest().setAttribute("teacherList", teacherService.getAll());
		return "search";
	}

	@Action(value = "search-teacher")
	public String searchTeacher() {
		if (teacherNumber == "" || teacherNumber == null) {
			ServletActionContext.getRequest().setAttribute("errorMsg", "请选择教师编号。");
			ServletActionContext.getRequest().setAttribute("teacherList", teacherService.getAll());
			return "search";
		}
		ServletActionContext.getRequest().setAttribute("teacher", teacherService.findByTeacherNum(teacherNumber));
		return "search-succ";
	}

	public String getTeacherNumber() {
		return teacherNumber;
	}

	public void setTeacherNumber(String teacherNumber) {
		this.teacherNumber = teacherNumber;
	}
	
}
