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
	
	<title>课程信息</title>
	
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
				<h3><small>课程信息</small></h3>
			</div>
			<fieldset>
				<legend>课程信息</legend>
				<table class="striped">
					<tbody>
						<tr>
							<td>课程编号</td>
							<td>${course.courseNumber }</td>
						</tr>
						<tr>
							<td>课程名称</td>
							<td>${course.courseName }</td>
						</tr>
						<tr>
							<td>课程别名</td>
							<td>${course.alias }</td>
						</tr>
						<tr>
							<td>任课教师</td>
							<td>${course.teacher.name }( ${course.teacher.title } )</td>
						</tr>
						<tr>
							<td>上课地点</td>
							<td>${course.classroom.alias }</td>
						</tr>
						<tr>
							<td>起始周</td>
							<td>第 ${course.startWeek } 周</td>
						</tr>
						<tr>
							<td>结束周</td>
							<td>第 ${course.endWeek } 周</td>
						</tr>
						<tr>
							<td>周时间</td>
							<td>
								<c:choose>
									<c:when test="${course.week==7 }">
										周  日
									</c:when>
									<c:otherwise>
										周  ${course.week }
									</c:otherwise>
								</c:choose>
							</td>
						</tr>
						<tr>
							<td>节次</td>
							<td>第 ${course.schoolTime } 大节</td>
						</tr>
					</tbody>
				</table>
				<span> <a class="button mini bg-color-blue fg-color-white" onclick="javascript:history.go(-1);return false;"><i class="icon-arrow-left-3 "></i>返回列表</a></span>
			</fieldset>
		</div>
	</div>
</div>

<jsp:include page="/WEB-INF/content/admin/footer.jsp"></jsp:include>
