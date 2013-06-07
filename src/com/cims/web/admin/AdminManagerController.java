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
import com.cims.domain.Manager;
import com.cims.service.ManagerService;
import com.cims.util.PageHelper;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
@Controller
@ParentPackage(value = "struts-default")
@Namespace(value = "/admin")
@Results({
		@Result(name = "list", location = "/WEB-INF/content/admin/manager/manager-list.jsp"),
		@Result(name = "manager-list", type = "redirect", location = "manager-list.html?index=1"),
		@Result(name = "add", location = "/WEB-INF/content/admin/manager/manager-add.jsp"),
		@Result(name = "add-succ", location = "/WEB-INF/content/admin/manager/manager-add-succ.jsp"),
		@Result(name = "delete-succ", location = "/WEB-INF/content/admin/manager/manager-delete-succ.jsp"),
		@Result(name = "update", location = "/WEB-INF/content/admin/manager/manager-update.jsp"),
		@Result(name = "update-succ", location = "/WEB-INF/content/admin/manager/manager-update-succ.jsp"),
		@Result(name = "show", location = "/WEB-INF/content/admin/manager/manager-show.jsp") })
public class AdminManagerController extends ActionSupport {

	@Autowired
	private ManagerService managerService;
	private Integer role;
	private Integer index;
	private Long id;
	private Manager manager;

	@Action(value = "manager-list")
	public String list() {
		if (index == null) {
			index = 1;
		}
		String contextPath = ServletActionContext.getServletContext().getContextPath();
		String path = contextPath + "/admin/manager-list.html?index=";
		PageHelper page = new PageHelper(index, AppConfig.pageSize,
				managerService.getCount(), path);
		List<Manager> managerList = managerService.list(index, AppConfig.pageSize);
		ServletActionContext.getRequest().setAttribute("page", page);
		ServletActionContext.getRequest().setAttribute("managerList", managerList);
		return "list";
	}

	@Action(value = "manager-to-add")
	public String toAddView() {
		return "add";
	}

	@Action(value = "manager-add")
	public String add() {
		if(role ==null) {
			ServletActionContext.getRequest().setAttribute("errorMsg", "请选择角色。");
			return "add";
		}
		else if (role == 0) {
			manager.setRole(Role.ADMIN);
		} else if (role == 1){
			manager.setRole(Role.SUPER_ADMIN);
		} else {
			manager.setRole(Role.TEST_ADMIN);
		}
		if (managerService.findByUserName(manager.getUserName()) != null) {
			ServletActionContext.getRequest().setAttribute("errorMsg","登录名已经存在，请更换。");
			return "add";
		} else if (managerService.findByManagerNum(manager.getManagerNumber()) != null) {
			ServletActionContext.getRequest().setAttribute("errorMsg",
					"管理员编号已经存在，请更换。");
			return "add";
		} else {
			managerService.save(manager);
			return "add-succ";
		}
	}

	@Action(value = "manager-to-update")
	public String toUpdateView() {
		if (id == null) {
			return "manager-list";
		}
		ServletActionContext.getRequest().setAttribute("manager", managerService.get(id));
		return "update";
	}

	@Action(value = "manager-update")
	public String Update() {
		if(role ==null) {
			ServletActionContext.getRequest().setAttribute("errorMsg", "请选择角色。");
			return "add";
		}
		else if (role == 0) {
			manager.setRole(Role.ADMIN);
		} else if (role == 1){
			manager.setRole(Role.SUPER_ADMIN);
		} else {
			manager.setRole(Role.TEST_ADMIN);
		}
		managerService.update(manager);
		return "update-succ";
	}

	@Action(value = "manager-show")
	public String show() {
		if (id == null) {
			id = (long) 0;
		}
		ServletActionContext.getRequest().setAttribute("manager", managerService.get(id));
		return "show";
	}

	@Action(value = "manager-delete")
	public String delete() {
		managerService.delete(id);
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

	public Manager getManager() {
		return manager;
	}

	public void setManager(Manager manager) {
		this.manager = manager;
	}

	public Integer getRole() {
		return role;
	}

	public void setRole(Integer role) {
		this.role = role;
	}

}
