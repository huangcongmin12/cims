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
	
	<title>自习查询</title>
	
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
					<h3><i class="first"></i>自习查询</h3><br>
				</div> 
				  <blockquote><div class="tertiary-secondary-text">自习教室</div></blockquote>
				<table class="bordered striped" >
					<thead>
						<tr>
							<th>序号</th>
							<th class="right">教室名称</th>
							<th class="right">教室别名</th>
							<th class="right">教室容量( 人 )</th>
						</tr>
					</thead>

					<tbody>
						<c:forEach items="${croomList}" varStatus="status" var="classroom">
							<tr>
								<td>${status.count+(page.index-1) * page.pageSize}</td>
								<td class="right">第${classroom.building }教学楼${classroom.floor }${classroom.number }教室</td>
								<td class="right">${classroom.alias }</td>
								<td class="right">${classroom.containment }</td>
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
</div>
<jsp:include page="/WEB-INF/content/default/student/footer.jsp"></jsp:include>
