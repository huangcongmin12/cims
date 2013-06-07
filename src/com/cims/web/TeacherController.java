package com.cims.web;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
@Controller
@ParentPackage(value = "struts-default")
@Namespace(value = "/user")
@Results({@Result(name = "login", location = "/WEB-INF/content/default/teacher/login.jsp")})
public class TeacherController extends ActionSupport {
	
	@Action(value = "teacher-login")
	public String index() {
		return "login";
	}

}
