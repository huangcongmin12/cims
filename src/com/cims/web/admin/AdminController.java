package com.cims.web.admin;

import java.util.Date;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.cims.constant.AppConfig;
import com.cims.domain.Manager;
import com.cims.service.ManagerService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
@Controller
@ParentPackage(value = "struts-default")
@Namespace(value = "/admin")
@Results({
		@Result(name = "login", location = "/WEB-INF/content/admin/login.jsp"),
		@Result(name = "info", location = "/WEB-INF/content/admin/welcome.jsp"),
		@Result(name = "info", location = "/WEB-INF/content/admin/welcome.jsp"),
		@Result(name = "delete-forbid", location = "/WEB-INF/content/admin/delete-forbid.jsp"),
		@Result(name = "login-succ", location = "admin-index.html", type="redirect")})
public class AdminController extends ActionSupport {
	
	@Autowired
	private ManagerService managerService;
	private String username;
	private String password;

	@Action(value = "admin-to-login")
	public String toLoginView() {
		return "login";
	}
	
	@Action(value = "admin-index")
	public String welcomInfo() {
		return "info";
	}
	
	@Action(value = "admin-login")
	public String login() throws Exception  {
		if (username == null) {
			ServletActionContext.getRequest().setAttribute("error_msg", "用户名不能为空。");
			return "login";
		}
		if (password == null) {
			ServletActionContext.getRequest().setAttribute("error_msg", "密码不能为空。");
			return "login";
		}
		if (managerService.login(username, password)) {
			Manager db_manager = managerService.findByUserName(username);
			ActionContext.getContext().getSession().put(AppConfig.SESSION_MANAGER, db_manager);
			db_manager.setLastIp(ServletActionContext.getRequest().getRemoteAddr());
			db_manager.setLastTime(new Date());
			managerService.update(db_manager);
			return "login-succ";
		} else {
			ServletActionContext.getRequest().setAttribute("error_msg", "用户或密码不正确。");
			return "login";
		}
	}
	
	@Action(value = "admin-login-out")
	public String loginOut() {
		ActionContext.getContext().getSession().remove(AppConfig.SESSION_MANAGER);
		return "login";
	}

	@Action(value = "delete-forbid")
	public String deleteForbid() {
		return "delete-forbid";
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

	
}
