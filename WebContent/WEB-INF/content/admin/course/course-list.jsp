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
	
	<title>课程列表</title>
	
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
			<span style="text-align: center;">
				<h3><small>课程列表</small></h3>
			</span>
			<div>
				<a href="${pageContext.request.contextPath }/admin/course-to-add.html" class="button mini bg-color-blue fg-color-white"><i class="icon-plus-2 "></i>添加</a>
				<table class="bordered striped" >
					<thead>
						<tr>
							<th>序号</th>
							<th class="right">课程编号</th>
							<th class="right">课程名称</th>
							<th class="right">任课老师</th>
							<th class="right">地点</th>
							<th class="right">上课时间</th>
							<th class="right">操作</th>
						</tr>
					</thead>

					<tbody>
						<c:forEach items="${courseList}" varStatus="status" var="course">
							<tr>
								<td>${status.count+(page.index-1) * page.pageSize}</td>
								<td class="right">${course.courseNumber }</td>
								<td class="right">${course.alias }</td>
								<td class="right">${course.teacher.name }</td>
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
								<td class="center" style="width: 102px;">
									<a href="${pageContext.request.contextPath }/admin/course-show.html?id=${course.id}"><i class="icon-eye fg-color-blue"></i></a> 
								 	<a href="${pageContext.request.contextPath }/admin/course-to-update.html?id=${course.id}" class=""><i class="icon-pencil fg-color-blue"></i></a> 
								 	<a id="delete" href="${pageContext.request.contextPath }/admin/course-delete.html?id=${course.id}" onclick="if(!confirm('确定删除该信息吗？'))return false;else return true;"> <i class="icon-remove fg-color-red"></i></a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
					<tfoot>&nbsp;
					</tfoot>
				</table>
				<div class="pagination">${page.pageHTML }</div>
			</div>
		</div>
	</div>
</div>

<jsp:include page="/WEB-INF/content/admin/footer.jsp"></jsp:include>
