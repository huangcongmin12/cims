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
@Namespace(value = "/")
@Results({
		@Result(name = "index", location = "/WEB-INF/content/index.jsp"),
		@Result(name = "error", location = "/WEB-INF/content/error/404.jsp")})
public class MainController extends ActionSupport {

	@Action(value = "index")
	public String index() {
		return "index";
	}
	
	@Action(value = "error")
	public String error() {
		return "error";
	}

}
