<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="snapped">
	<!-- <ul class="listview fluid">
		<li class=" bg-color-blueLight fg-color-white">
			<div class="data ">
				<a href="#"><h4 class="padding10 bg-color-blueLight">自习查询</h4></a>
			</div>
		</li>
		<li class=" bg-color-blueLight fg-color-white">
			<div class="data ">
				<a href="#"><h4 class="padding10 bg-color-blueLight">教室查询</h4></a>
			</div>
		</li>
		<li class=" bg-color-blueLight fg-color-white">
			<div class="data ">
				<a href="#"><h4 class="padding10 bg-color-blueLight">课程查询</h4></a>
			</div>
		</li>
		<li class=" bg-color-blueLight fg-color-white">
			<div class="data ">
				<a href="#"><h4 class="padding10 bg-color-blueLight">教室申请</h4></a>
			</div>
		</li>
	</ul> -->
</div>
<div class="page-sidebar secondary with-sidebar">
	<ul>
		<li><a><i
				class="icon-search fg-color-white"></i>查询</a>
			<ul class="sub-menu light sidebar-dropdown-menu open">
				<li><a href="${pageContext.request.contextPath }/student/to-search-selfstudy.html">自习查询</a></li>
				<li><a href="${pageContext.request.contextPath }/student/to-search-classroom.html">教室查询</a></li>
				<li><a href="${pageContext.request.contextPath }/student/to-search-course.html">课程查询</a></li>
				<li><a href="${pageContext.request.contextPath }/student/to-search-teacher.html">教师查询</a></li>
			</ul></li>
		<li><a><i
				class="icon-wrench fg-color-white"></i>设置</a>
			<ul class="sub-menu light sidebar-dropdown-menu open">
				<li><a href="${pageContext.request.contextPath }/student/show-my-info.html">我的资料</a></li>
				<li><a href="${pageContext.request.contextPath }/student/to-update-password.html">登录修改</a></li>
			</ul></li>
		</ul>
<%-- 		<li><a><i
				class="icon-book fg-color-white"></i>申请</a>
			<ul class="sub-menu light sidebar-dropdown-menu open">
				<li><a href="${pageContext.request.contextPath }/admin/course-to-add.html">申请教室</a></li>
				<li><a href="${pageContext.request.contextPath }/admin/course-to-add.html">待审批(无)</a></li>
				<li><a href="${pageContext.request.contextPath }/admin/course-list.html">申请历史</a></li>
			</ul></li>
		</ul> --%>
</div>
