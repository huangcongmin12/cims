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
	
	<title>欢迎</title>
	
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
			<div class="grid bg-color-blueLight">
					<div class="row">
						<div class="padding40 fg-color-darken text-center">
							<h3>欢迎使用广西大学教室信息化管理平台！</h3>
						</div>
					</div>
					<div class="row">
						<div class="span9">
							<div class="grid ">
								<div class="row" >
									<div >
										<h3>&nbsp;&nbsp;&nbsp;&nbsp;欢迎</h3>
										<p class="tertiary-secondary-text">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;您好，您现在使用的是一套用于教室信息化管理的专业系统。</p>
										<br>
									</div>
									<div class="tertiary-secondary-text">
										<h3>&nbsp;&nbsp;&nbsp;&nbsp;简单</h3>
										<p class="tertiary-secondary-text">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一站通使用方式，功能强大，操作简单。</p>
										<br>
										<h3>&nbsp;&nbsp;&nbsp;&nbsp;专业</h3>
										<p class="tertiary-secondary-text">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;界面设计精美，优雅，功能强大，教室信息化管理轻松自如。</p>
										<br>
										<br><br>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
		</div>
	</div>
</div>
<jsp:include page="/WEB-INF/content/default/student/footer.jsp"></jsp:include>
