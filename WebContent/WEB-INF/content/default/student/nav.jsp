<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="page nav-bar bg-color-blue">
	<div class="nav-bar-inner padding10">
	<a ><span class="element brand"><font size="5">广西大学教室信息化管理平台&nbsp;&nbsp;</font></span></a>
		<span class="divider"></span>
		<ul class="menu">
			<li><a>
			&nbsp;&nbsp;
			用户：${session_student.userName }，你好！
			</a></li>
		</ul> 
		<div class="text-right ">
				<h3><a class="fg-color-white" href="${pageContext.request.contextPath }/student/student-login-out.html" onclick="if(!confirm('您确定确定要退出系统？'))return false;else return true;"><i class="icon-switch fg-color-white"></i>安全退出</a></h3>
		</div>
	</div>
</div>
