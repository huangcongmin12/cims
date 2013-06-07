package com.cims.web.admin;

import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.cims.constant.AppConfig;
import com.cims.domain.Classroom;
import com.cims.service.ClassroomService;
import com.cims.util.PageHelper;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
@Controller
@ParentPackage(value = "struts-default")
@Namespace(value = "/admin")
@Results({
		@Result(name = "list", location = "/WEB-INF/content/admin/classroom/classroom-list.jsp"),
		@Result(name = "classroom-list", type = "redirect", location = "classroom-list.html?index=1"),
		@Result(name = "add", location = "/WEB-INF/content/admin/classroom/classroom-add.jsp"),
		@Result(name = "add-succ", location = "/WEB-INF/content/admin/classroom/classroom-add-succ.jsp"),
		@Result(name = "delete-succ", location = "/WEB-INF/content/admin/classroom/classroom-delete-succ.jsp"),
		@Result(name = "update", location = "/WEB-INF/content/admin/classroom/classroom-update.jsp"),
		@Result(name = "update-succ", location = "/WEB-INF/content/admin/classroom/classroom-update-succ.jsp"),
		@Result(name = "show", location = "/WEB-INF/content/admin/classroom/classroom-show.jsp") })
public class ClassroomManagerController extends ActionSupport {

	@Autowired
	private ClassroomService croomService;
	private Integer index;
	private Long id;
	private Classroom classroom;

	@Action(value = "classroom-list")
	public String list() {
		if (index == null) {
			index = 1;
		}
		String contextPath = ServletActionContext.getServletContext().getContextPath();
		String path = contextPath + "/admin/classroom-list.html?index=";
		PageHelper page = new PageHelper(index, AppConfig.pageSize,
				croomService.getCount(), path);
		List<Classroom> classroomList = croomService.list(index, AppConfig.pageSize);
		ServletActionContext.getRequest().setAttribute("page", page);
		ServletActionContext.getRequest().setAttribute("classroomList", classroomList);
		return "list";
	}

	@Action(value = "classroom-to-add")
	public String toAddView() {
		return "add";
	}

	@Action(value = "classroom-add")
	public String add() {
		if (croomService.findByAlias(classroom.getAlias()) != null) {
			ServletActionContext.getRequest().setAttribute("errorMsg","教室编号已存在，请更换。");
			return "add";
		} else {
			croomService.save(classroom);
			return "add-succ";
		}
	}

	@Action(value = "classroom-to-update")
	public String toUpdateView() {
		if (id == null) {
			return "classroom-list";
		}
		ServletActionContext.getRequest().setAttribute("classroom", croomService.get(id));
		return "update";
	}

	@Action(value = "classroom-update")
	public String Update() {
		croomService.update(classroom);
		return "update-succ";
	}

	@Action(value = "classroom-show")
	public String show() {
		if (id == null) {
			id = (long) 0;
		}
		ServletActionContext.getRequest().setAttribute("classroom", croomService.get(id));
		return "show";
	}

	@Action(value = "classroom-delete")
	public String delete() {
		croomService.delete(id);
		return "delete-succ";
	}

	public Integer getIndex() {
		return index;
	}

	public void setIndex(Integer index) {
		this.index = index;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Classroom getClassroom() {
		return classroom;
	}

	public void setClassroom(Classroom classroom) {
		this.classroom = classroom;
	}
	
}
