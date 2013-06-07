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
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/assets/jquery.mousewheel.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/assets/moment.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/assets/moment_langs.js"></script>
    
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/modern/dropdown.js"></script>
   <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/modern/accordion.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/modern/buttonset.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/modern/carousel.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/modern/input-control.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/modern/pagecontrol.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/modern/rating.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/modern/slider.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/modern/tile-slider.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/modern/tile-drag.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/modern/calendar.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/modern/dialog.js"></script>
	
	<title>教师信息</title>
	
</head>
<body class="metrouicss" onload="prettyPrint()">
<jsp:include page="/WEB-INF/content/admin/nav.jsp"/>
<div class="page secondary with-sidebar">
	<div class="page-header">
		<p />
		&nbsp;
		<p />
	</div>
	<jsp:include page="/WEB-INF/content/admin/sidebar.jsp"></jsp:include>
	<div class="page-region ">
		<div class="page-region-content">
			<div style="text-align: center;">
				<h3><small>教师信息</small></h3>
			</div>
			<fieldset>
				<legend>教师信息</legend>
				<table class="striped">
					<tbody>
						<tr>
							<td>教师编号</td>
							<td>${teacher.teacherNumber }</td>
						</tr>
						<tr>
							<td>姓名</td>
							<td>${teacher.name }</td>
						</tr>
						<tr>
							<td>性别</td>
							<td>${teacher.sex.value }</td>
						</tr>
						<tr>
							<td>登录名称</td>
							<td>${teacher.userName }</td>
						</tr>
						<tr>
							<td>登录密码</td>
							<td>${teacher.password }</td>
						</tr>
						<tr>
							<td>邮箱</td>
							<td>${teacher.email }</td>
						</tr>
						<tr>
							<td>院系</td>
							<td>${teacher.department }</td>
						</tr>
						<tr>
							<td>职称</td>
							<td>${teacher.title }</td>
						</tr>
						<tr>
							<td>教授课程</td>
							<td>
							<ol>
							<c:forEach items="${teacher.courses}" var="course">
								  <li>${course.courseName}</li>
							</c:forEach>
							</ol>
							</td>
						</tr>
						<tr>
							<td>上次登录时间</td>
							<td>${teacher.lastTime }</td>
						</tr>
						<tr>
							<td>上次登录IP</td>
							<td>${teacher.lastIp }</td>
						</tr>
						<tr>
							<td>状态</td>
							<c:choose>
								<c:when test="${teacher.status==0}">
									<td>启用</td>
								</c:when>
								<c:otherwise>
									<td>禁用</td>
								</c:otherwise>
							</c:choose>
						</tr>
					</tbody>
				</table>
				<span> <a class="button mini bg-color-blue fg-color-white" onclick="javascript:history.go(-1);return false;"><i class="icon-arrow-left-3 "></i>返回列表</a></span>
			</fieldset>
		</div>
	</div>
</div>

<jsp:include page="/WEB-INF/content/admin/footer.jsp"></jsp:include>
