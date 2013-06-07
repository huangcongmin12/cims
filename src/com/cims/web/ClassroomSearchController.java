package com.cims.web;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.cims.service.ClassroomService;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
@Controller
@ParentPackage(value = "struts-default")
@Namespace(value = "/student")
@Results({
		@Result(name = "search", location = "/WEB-INF/content/default/student/search-classroom.jsp"),
		@Result(name = "search-succ", location = "/WEB-INF/content/default/student/search-classroom-show.jsp") })
public class ClassroomSearchController extends ActionSupport {

	@Autowired
	private ClassroomService classroomService;
	private String room;

	@Action(value = "to-search-classroom")
	public String toSearchClassroom() {
		ServletActionContext.getRequest().setAttribute("croomList",classroomService.getAll());
		return "search";
	}

	@Action(value = "search-classroom")
	public String searchClassroom() {
		if (room == "" || room == null) {
			ServletActionContext.getRequest().setAttribute("errorMsg", "请选择教室。");
			ServletActionContext.getRequest().setAttribute("croomList",classroomService.getAll());
			return "search";
		}
		ServletActionContext.getRequest().setAttribute("classroom", classroomService.findByAlias(room));
		return "search-succ";
	}

	public String getRoom() {
		return room;
	}

	public void setRoom(String room) {
		this.room = room;
	}

}
