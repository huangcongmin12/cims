<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta name="viewport" content="target-densitydpi=device-dpi, width=device-width, initial-scale=1.0, maximum-scale=1">

    <link href="${pageContext.request.contextPath}/resources/css/modern.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/modern-responsive.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/site.css" rel="stylesheet" type="text/css">
  

    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/assets/jquery-1.9.0.min.js"></script>
	
	<title>我的资料</title>
	
</head>
<body class="metrouicss" onload="prettyPrint()">
<jsp:include page="/WEB-INF/content/default/student/nav.jsp"/>
<div class="page secondary with-sidebar">
	<div class="page-header">
		<p />
		&nbsp;
		<p />
	</div>
	<jsp:include page="/WEB-INF/content/default/student/sidebar.jsp"></jsp:include>
	<div class="page page-region">
		<div class="page-region-content">
			<div class="grid ">
				<div class="row text-center">
					<h3><i class="first"></i>我的资料</h3><br>
				</div> 
				  <blockquote><div class="tertiary-secondary-text">我的资料：</div></blockquote>
				  <br>
				<table class="striped">
					<tbody>
						<tr>
							<td>学号</td>
							<td>${stu.studentNumber }</td>
						</tr>
						<tr>
							<td>姓名</td>
							<td>${stu.name }</td>
						</tr>
						<tr>
							<td>性别</td>
							<td>${stu.sex.value }</td>
						</tr>
						<tr>
							<td>登录名</td>
							<td>${stu.userName }</td>
						</tr>
						<tr>
							<td>邮箱</td>
							<td>${stu.email }</td>
						</tr>
						<tr>
							<td>学院</td>
							<td>${stu.department }</td>
						</tr>
						<tr>
							<td>年级</td>
							<td>${stu.grade }</td>
						</tr>
						<tr>
							<td>专业班级</td>
							<td>${stu.classes }</td>
						</tr>
						<tr>
							<td>上次登录时间</td>
							<td>${stu.lastTime }</td>
						</tr>
						<tr>
							<td>上次登录IP</td>
							<td>${stu.lastIp }</td>
						</tr>
					</tbody>
				</table>
		</div>
	</div>
</div>
<jsp:include page="/WEB-INF/content/default/student/footer.jsp"></jsp:include>
