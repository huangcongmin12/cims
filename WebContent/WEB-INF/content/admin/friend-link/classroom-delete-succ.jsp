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
	
	<title>删除成功</title>
	
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
				<h3><small>删除教室</small></h3>
			</div>
			<fieldset>
					 <p class="tertiary-info-secondary-text "> <h4> <span class="fg-color-green"><i class="icon-checkmark fg-color-green"></i>删除成功！</span></h4> </p>
					</table>
				</form>
			</fieldset>
		</div>
	</div>
</div>

<jsp:include page="/WEB-INF/content/admin/footer.jsp"></jsp:include>
<%
	String url = "classroom-list.html";
	String content = 1 + ";URL=" + url;
	response.setHeader("REFRESH", content);
%>