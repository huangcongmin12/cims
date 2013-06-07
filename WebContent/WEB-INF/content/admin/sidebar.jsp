<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="page-sidebar secondary with-sidebar">
	<ul>
		<li><a><i
				class="icon-cube-2 fg-color-white"></i>教室</a>
			<ul class="sub-menu light sidebar-dropdown-menu open">
				<li><a href="${pageContext.request.contextPath }/admin/classroom-to-add.html">添加教室</a></li>
				<li><a href="${pageContext.request.contextPath }/admin/classroom-list.html">教室列表</a></li>
			</ul></li>
		<li><a><i
				class="icon-book fg-color-white"></i>课程</a>
			<ul class="sub-menu light sidebar-dropdown-menu open">
				<li><a href="${pageContext.request.contextPath }/admin/course-to-add.html">添加课程</a></li>
				<li><a href="${pageContext.request.contextPath }/admin/course-list.html">课程列表</a></li>
			</ul></li>
		<li><a><i
				class="icon-user-2 fg-color-white"></i>学生</a>
			<ul class="sub-menu light sidebar-dropdown-menu open">
				<li><a
					href="${pageContext.request.contextPath }/admin/student-to-add.html">添加学生</a></li>
				<li><a
					href="${pageContext.request.contextPath }/admin/student-list.html">学生列表</a></li>
			</ul></li>
		<li><a><i
				class="icon-user-3 fg-color-white"></i>教师</a>
			<ul class="sub-menu light sidebar-dropdown-menu open">
				<li><a href="${pageContext.request.contextPath }/admin/teacher-to-add.html">添加教师</a></li>
				<li><a href="${pageContext.request.contextPath }/admin/teacher-list.html">教师列表</a></li>
			</ul></li>
		
		<c:choose>
			<c:when test="${session_manager.role.value=='超级管理员' }">
			<li><a><i
				class="icon-user fg-color-white fg-color-white"></i>管理员</a>
			<ul class="sub-menu light sidebar-dropdown-menu open">
				<li><a href="${pageContext.request.contextPath }/admin/manager-to-add.html">添加管理员</a></li>
				<li><a href="${pageContext.request.contextPath }/admin/manager-list.html">管理员列表</a></li>
			</ul></li>
		<li><a><i
				class="icon-wrench fg-color-white"></i>设置</a>
			<ul class="sub-menu light sidebar-dropdown-menu open">
				<li><a href="${pageContext.request.contextPath }/admin/admin-index.html">系统信息</a></li>
				<li><a href="">系统设置</a></li>
			</ul></li>
			</c:when>
			<c:otherwise>
			<li><a><i
				class="icon-wrench fg-color-white"></i>设置</a>
			<ul class="sub-menu light sidebar-dropdown-menu open">
				<li><a href="${pageContext.request.contextPath }/admin/admin-index.html">系统信息</a></li>
				<li><a href="#">修改密码</a></li>
			</ul></li>
			</c:otherwise>
		</c:choose>
	</ul>
</div>
