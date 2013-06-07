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
import com.cims.domain.Student;
import com.cims.service.StudentService;
import com.cims.util.PageHelper;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
@Controller
@ParentPackage(value = "struts-default")
@Namespace(value = "/admin")
@Results({
		@Result(name = "list", location = "/WEB-INF/content/admin/student/student-list.jsp"),
		@Result(name = "student-list", type = "redirect", location = "student-list.html?index=1"),
		@Result(name = "add", location = "/WEB-INF/content/admin/student/student-add.jsp"),
		@Result(name = "add-succ", location = "/WEB-INF/content/admin/student/student-add-succ.jsp"),
		@Result(name = "delete-succ", location = "/WEB-INF/content/admin/student/student-delete-succ.jsp"),
		@Result(name = "update", location = "/WEB-INF/content/admin/student/student-update.jsp"),
		@Result(name = "update-succ", location = "/WEB-INF/content/admin/student/student-update-succ.jsp"),
		@Result(name = "show", location = "/WEB-INF/content/admin/student/student-show.jsp") })
public class StudentManagerController extends ActionSupport {

	@Autowired
	private StudentService stuService;
	private Integer sex;
	private Integer index;
	private Long id;
	private Student student;

	@Action(value = "student-list")
	public String list() {
		if (index == null) {
			index = 1;
		}
		String contextPath = ServletActionContext.getServletContext().getContextPath();
		String path = contextPath + "/admin/student-list.html?index=";
		PageHelper page = new PageHelper(index, AppConfig.pageSize,
				stuService.getCount(), path);
		List<Student> stuList = stuService.list(index, AppConfig.pageSize);
		ServletActionContext.getRequest().setAttribute("page", page);
		ServletActionContext.getRequest().setAttribute("stuList", stuList);
		return "list";
	}

	@Action(value = "student-to-add")
	public String toAddView() {
		return "add";
	}

	@Action(value = "student-add")
	public String add() {
		if(sex ==null) {
			return "add";
		}
		else if (sex == 0) {
			student.setSex(Sex.MALE);
		} else {
			student.setSex(Sex.FEMALE);
		}
		if (stuService.findByUserName(student.getUserName()) != null) {
			ServletActionContext.getRequest().setAttribute("errorMsg","登录名已经存在，请更换。");
			return "add";
		} else if (stuService.findByStudentNum(student.getStudentNumber()) != null) {
			ServletActionContext.getRequest().setAttribute("errorMsg",
					"学号已经存在，请更换。");
			return "add";
		} else {
			student.setRole(Role.STUDENT);
			stuService.save(student);
			return "add-succ";
		}
	}

	@Action(value = "student-to-update")
	public String toUpdateView() {
		if (id == null) {
			return "student-list";
		}
		Student dbStu = stuService.get(id);
		ServletActionContext.getRequest().setAttribute("student", dbStu);
		return "update";
	}

	@Action(value = "student-update")
	public String Update() {
		if (sex == 0) {
			student.setSex(Sex.MALE);
		} else {
			student.setSex(Sex.FEMALE);
		}
		stuService.update(student);
		return "update-succ";
	}

	@Action(value = "student-show")
	public String show() {
		if (id == null) {
			id = (long) 0;
		}
		Student stu = stuService.get(id);
		ServletActionContext.getRequest().setAttribute("stu", stu);
		return "show";
	}

	@Action(value = "student-delete")
	public String delete() {
		stuService.delete(id);
		return "delete-succ";
	}

	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Integer getIndex() {
		return index;
	}

	public void setIndex(Integer index) {
		this.index = index;
	}

	public Integer getSex() {
		return sex;
	}

	public void setSex(Integer sex) {
		this.sex = sex;
	}

}
