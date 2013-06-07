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
import com.cims.constant.Role;
import com.cims.constant.Sex;
import com.cims.domain.Teacher;
import com.cims.service.TeacherService;
import com.cims.util.PageHelper;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
@Controller
@ParentPackage(value = "struts-default")
@Namespace(value = "/admin")
@Results({
		@Result(name = "list", location = "/WEB-INF/content/admin/teacher/teacher-list.jsp"),
		@Result(name = "add", location = "/WEB-INF/content/admin/teacher/teacher-add.jsp"),
		@Result(name = "add-succ", location = "/WEB-INF/content/admin/teacher/teacher-add-succ.jsp"),
		@Result(name = "delete-succ", location = "/WEB-INF/content/admin/teacher/teacher-delete-succ.jsp"),
		@Result(name = "teacher-list", type = "redirect", location = "teacher-list.html"),
		@Result(name = "update", location = "/WEB-INF/content/admin/teacher/teacher-update.jsp"),
		@Result(name = "update-succ", location = "/WEB-INF/content/admin/teacher/teacher-update-succ.jsp"),
		@Result(name = "show", location = "/WEB-INF/content/admin/teacher/teacher-show.jsp") })
public class TeacherManagerController extends ActionSupport {

	@Autowired
	private TeacherService teacherService;
	private Integer index;
	private Long id;
	private Integer sex;
	private Teacher teacher;

	@Action(value = "teacher-list")
	public String list() {
		if (index == null) {
			index = 1;
		}
		String contextPath = ServletActionContext.getServletContext()
				.getContextPath();
		String path = contextPath + "/admin/teacher-list.html?index=";
		PageHelper page = new PageHelper(index, AppConfig.pageSize,
				teacherService.getCount(), path);
		List<Teacher> list = teacherService.list(index, AppConfig.pageSize);
		ServletActionContext.getRequest().setAttribute("page", page);
		ServletActionContext.getRequest().setAttribute("teacherList", list);
		return "list";
	}

	@Action(value = "teacher-to-add")
	public String toAddView() {
		return "add";
	}
	
	@Action(value = "teacher-add")
	public String add() {
		if(sex ==null) {
			return "add";
		}
		else if (sex == 0) {
			teacher.setSex(Sex.MALE);
		} else {
			teacher.setSex(Sex.FEMALE);
		}
		if (teacherService.findByUserName(teacher.getUserName()) != null) {
			ServletActionContext.getRequest().setAttribute("errorMsg","登录名已经存在，请更换。");
			return "add";
		} else if (teacherService.findByTeacherNum(teacher.getTeacherNumber()) != null) {
			ServletActionContext.getRequest().setAttribute("errorMsg",
					"教师编号已经存在，请更换。");
			return "add";
		} else {
			teacher.setRole(Role.TEACHER);
			teacherService.save(teacher);
			return "add-succ";
		}
	}
	
	@Action(value = "teacher-to-update")
	public String toUpdateView() {
		if (id == null) {
			return "teacher-list";
		}
		ServletActionContext.getRequest().setAttribute("teacher", teacherService.get(id));
		return "update";
	}
	
	@Action(value = "teacher-update")
	public String update() {
		if (sex == 0) {
			teacher.setSex(Sex.MALE);
		} else {
			teacher.setSex(Sex.FEMALE);
		}
		teacherService.update(teacher);
		return "update-succ";
	}
	
	
	@Action(value = "teacher-delete")
	public String delete() {
		teacherService.delete(id);
		return "delete-succ";
	}
	
	@Action(value = "teacher-show")
	public String show() {
		if (id == null) {
			id = (long) 0;
		}
		ServletActionContext.getRequest().setAttribute("teacher", teacherService.get(id));
		return "show";
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

	public Teacher getTeacher() {
		return teacher;
	}

	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}

	public Integer getSex() {
		return sex;
	}

	public void setSex(Integer sex) {
		this.sex = sex;
	}

}
