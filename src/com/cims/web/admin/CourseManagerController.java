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
import com.cims.domain.Course;
import com.cims.domain.Teacher;
import com.cims.service.ClassroomService;
import com.cims.service.CourseService;
import com.cims.service.TeacherService;
import com.cims.util.PageHelper;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
@Controller
@ParentPackage(value = "struts-default")
@Namespace(value = "/admin")
@Results({
		@Result(name = "list", location = "/WEB-INF/content/admin/course/course-list.jsp"),
		@Result(name = "course-list", type = "redirect", location = "course-list.html?index=1"),
		@Result(name = "add", location = "/WEB-INF/content/admin/course/course-add.jsp"),
		@Result(name = "add-succ", location = "/WEB-INF/content/admin/course/course-add-succ.jsp"),
		@Result(name = "delete-succ", location = "/WEB-INF/content/admin/course/course-delete-succ.jsp"),
		@Result(name = "update", location = "/WEB-INF/content/admin/course/course-update.jsp"),
		@Result(name = "update-succ", location = "/WEB-INF/content/admin/course/course-update-succ.jsp"),
		@Result(name = "show", location = "/WEB-INF/content/admin/course/course-show.jsp") })
public class CourseManagerController extends ActionSupport {

	@Autowired
	private CourseService courseService;
	@Autowired
	private TeacherService teacherService;
	@Autowired
	private ClassroomService croomService;
	private Integer index;
	private Long id;
	private Course course;

	@Action(value = "course-list")
	public String list() {
		if (index == null) {
			index = 1;
		}
		String contextPath = ServletActionContext.getServletContext().getContextPath();
		String path = contextPath + "/admin/course-list.html?index=";
		PageHelper page = new PageHelper(index, AppConfig.pageSize,
				courseService.getCount(), path);
		List<Course> courseList = courseService.list(index, AppConfig.pageSize);
		ServletActionContext.getRequest().setAttribute("page", page);
		ServletActionContext.getRequest().setAttribute("courseList", courseList);
		return "list";
	}

	@Action(value = "course-to-add")
	public String toAddView() {
		return "add";
	}

	@Action(value = "course-add")
	public String add() {
		if (courseService.findByCourseNumber(course.getCourseNumber()) != null) {
			ServletActionContext.getRequest().setAttribute("errorMsg","课程编号已存在，请更换。");
			return "add";
		} 
		Teacher t = teacherService.findByTeacherNum(course.getTeacher().getTeacherNumber());
		if (t == null) {
			ServletActionContext.getRequest().setAttribute("errorMsg","教师编号不存在，请输入正确的教师编号。");
			return "add";
		}
		Classroom croom = croomService.findByAlias(course.getClassroom().getAlias());
		if (croom == null) {
			ServletActionContext.getRequest().setAttribute("errorMsg","教室编号不存在，请输入正确的教室编号。");
			return "add";
		}
		course.setTeacher(t);
		course.setClassroom(croom);
		courseService.save(course);
		return "add-succ";
	}

	@Action(value = "course-to-update")
	public String toUpdateView() {
		if (id == null) {
			return "course-list";
		}
		ServletActionContext.getRequest().setAttribute("course", courseService.get(id));
		return "update";
	}

	@Action(value = "course-update")
	public String Update() {
		if (course.getCourseNumber() == null) {
			ServletActionContext.getRequest().setAttribute("errorMsg","请输入课程编号。");
			ServletActionContext.getRequest().setAttribute("course", courseService.get(id));
			return "update";
		} 
		Teacher teacher = teacherService.findByTeacherNum(course.getTeacher().getTeacherNumber());
		if (teacher == null) {
			ServletActionContext.getRequest().setAttribute("errorMsg","教师编号不存在，请输入正确的教师编号。");
			ServletActionContext.getRequest().setAttribute("course", courseService.get(id));
			return "update";
		}
		Classroom room = croomService.findByAlias(course.getClassroom().getAlias());
		if (room == null) {
			ServletActionContext.getRequest().setAttribute("errorMsg","教室编号不存在，请输入正确的教室编号。");
			ServletActionContext.getRequest().setAttribute("course", courseService.get(id));
			return "update";
		}
		course.setTeacher(teacher);
		course.setClassroom(room);
		courseService.update(course);
		return "update-succ";
	}

	@Action(value = "course-show")
	public String show() {
		if (id == null) {
			id = (long) 0;
		}
		ServletActionContext.getRequest().setAttribute("course", courseService.get(id));
		return "show";
	}

	@Action(value = "course-delete")
	public String delete() {
		// courseService.delete(id);
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

	public Course getCourse() {
		return course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

}
