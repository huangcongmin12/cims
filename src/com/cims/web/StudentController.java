package com.cims.web;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

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
import com.cims.domain.Student;
import com.cims.service.ClassroomService;
import com.cims.service.StudentService;
import com.cims.util.PageHelper;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
@Controller
@ParentPackage(value = "struts-default")
@Namespace(value = "/student")
@Results({
		@Result(name = "index", location = "/WEB-INF/content/default/student/index.jsp"),
		@Result(name = "login", location = "/WEB-INF/content/default/student/login.jsp"),
		@Result(name = "update", location = "/WEB-INF/content/default/student/update-password.jsp"),
		@Result(name = "update-succ", location = "/WEB-INF/content/default/student/update-password-succ.jsp"),
		@Result(name = "show", location = "/WEB-INF/content/default/student/show-my-info.jsp"),
		@Result(name = "search-selfstudy", location = "/WEB-INF/content/default/student/search-selfstudy.jsp"),
		@Result(name = "search-selfstudy-succ", location = "/WEB-INF/content/default/student/search-selfstudy-show.jsp"),
		@Result(name = "login-succ",type="redirect", location = "index.html") })
public class StudentController extends ActionSupport {

	@Autowired
	private StudentService studentService;
	@Autowired
	private ClassroomService croomService;
	private Student student;
	private String username;
	private String password;
	private String newPWD;
	private String confPWD;
	private int index;
	private int weekNumber;
	private int week;
	private int schoolTime;

	@Action(value = "index")
	public String index() {
		return "index";
	}

	@Action(value = "student-to-login")
	public String toLoginView() {
		return "login";
	}
	
	@Action(value = "show-my-info")
	public String showInfo() {
		Student s = (Student) ServletActionContext.getRequest().getSession().getAttribute(AppConfig.SESSION_STUDENT);
		ServletActionContext.getRequest().setAttribute("stu", studentService.get(s.getId()));
		return "show";
	}
	
	@Action(value = "to-update-password")
	public String toUpdateView() {
		Student s = (Student) ServletActionContext.getRequest().getSession().getAttribute(AppConfig.SESSION_STUDENT);
		ServletActionContext.getRequest().setAttribute("stu", studentService.get(s.getId()));
		return "update";
	}
	
	@Action(value = "update-password")
	public String update() {
		if (username == "" || username == null) {
			ServletActionContext.getRequest().setAttribute("stu", studentService.get(student.getId()));
			ServletActionContext.getRequest().setAttribute("errorMsg", "原始密码不能为空。");
			return "update";
		}
		Student db_student = studentService.get(student.getId());
		db_student.setUserName(username);
		db_student.setPassword(newPWD);
		studentService.update(db_student);
		ActionContext.getContext().getSession().put(AppConfig.SESSION_STUDENT, studentService.get(db_student.getId()));
		return "update-succ";
	}
	
	@Action(value = "student-login")
	public String login() throws Exception {
		if (username == null) {
			ServletActionContext.getRequest().setAttribute("error_msg", "用户名不能为空。");
			return "login";
		}
		if (password == null) {
			ServletActionContext.getRequest().setAttribute("error_msg", "密码不能为空。");
			return "login";
		}
		if (studentService.login(username, password)) {
			Student db_student = studentService.findByUserName(username);
			ActionContext.getContext().getSession().put(AppConfig.SESSION_STUDENT, db_student);
			db_student.setLastIp(ServletActionContext.getRequest().getRemoteAddr());
			db_student.setLastTime(new Date());
			studentService.update(db_student);
			return "login-succ";
		} else {
			ServletActionContext.getRequest().setAttribute("error_msg","用户或密码不正确。");
			return "login";
		}
	}

	@Action(value = "student-login-out")
	public String loginOut() {
		ActionContext.getContext().getSession().remove(AppConfig.SESSION_STUDENT);
		return "login";
	}

	@Action(value = "to-search-selfstudy")
	public String toSelfstudySearch() {
		return "search-selfstudy";
	}
	
	@Action(value = "search-selfstudy")
	public String selfstudySearch() {
		HttpServletRequest request = ServletActionContext.getRequest();
		if (weekNumber == 0 ) {
			request.setAttribute("errorMsg", "请选择周数。");
			return "search-selfstudy";
		}
		if (week == 0 ) {
			request.setAttribute("errorMsg", "请选择周时间。");
			return "search-selfstudy";
		}
		if (schoolTime == 0 ) {
			request.setAttribute("errorMsg", "请选择上课时间。");
			return "search-selfstudy";
		}
		if (index == 0) {
			index = 1;
		}
		String contextPath = ServletActionContext.getServletContext().getContextPath();
		String path = contextPath + "/student/search-selfstudy.html?weekNumber=" + weekNumber 
				+ "&week=" + week + "&schoolTime=" + schoolTime + "&index=";
		PageHelper page = new PageHelper(index, 3, croomService.findByNoCourseCount(weekNumber, week, schoolTime), path);
		List<Classroom> croomList = croomService.findByNoCourse(weekNumber, week, schoolTime, index, 3);
		request.setAttribute("page", page);
		request.setAttribute("croomList", croomList);
		return "search-selfstudy-succ";
	}
	
	public StudentService getStudentService() {
		return studentService;
	}

	public void setStudentService(StudentService studentService) {
		this.studentService = studentService;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getIndex() {
		return index;
	}

	public void setIndex(int index) {
		this.index = index;
	}

	public int getWeekNumber() {
		return weekNumber;
	}

	public void setWeekNumber(int weekNumber) {
		this.weekNumber = weekNumber;
	}

	public int getWeek() {
		return week;
	}

	public void setWeek(int week) {
		this.week = week;
	}

	public int getSchoolTime() {
		return schoolTime;
	}

	public void setSchoolTime(int schoolTime) {
		this.schoolTime = schoolTime;
	}

	public String getNewPWD() {
		return newPWD;
	}

	public void setNewPWD(String newPWD) {
		this.newPWD = newPWD;
	}

	public String getConfPWD() {
		return confPWD;
	}

	public void setConfPWD(String confPWD) {
		this.confPWD = confPWD;
	}

	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}
	
}
