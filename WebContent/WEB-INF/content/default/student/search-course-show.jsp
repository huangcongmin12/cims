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
	
	<title>课程查询</title>
	
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
					<h3><i class="first"></i>课程查询</h3><br>
				</div> 
				  <blockquote><div class="tertiary-secondary-text">课程编号:${course.courseNumber }</div></blockquote>
				  <br>
				<table class="bordered striped" >
					<thead>
						<tr>
							<th class="right">课程编号</th>
							<th class="right">课程名称</th>
							<th class="right">任课教师</th>
							<th class="right">上课地点</th>
							<th class="right">上课时间</th>
						</tr>
					</thead>

					<tbody>
							<tr>
								<td class="right">${course.courseNumber }</td>
								<td class="right">${course.alias }</td>
								<td class="right">${course.teacher.name }( ${course.teacher.title } )</td>
								<td class="right">${course.classroom.alias }</td>
								<td class="right">
									<c:choose>
										<c:when test="${course.week==7 }">
											周日
										</c:when>
										<c:otherwise>
											周${course.week }
										</c:otherwise>
									</c:choose>
									第${course.schoolTime}大节第{${course.startWeek}-${course.endWeek}周}
								</td>
							</tr>
					</tbody>
				</table>
		</div>
	</div>
</div>
<jsp:include page="/WEB-INF/content/default/student/footer.jsp"></jsp:include>
