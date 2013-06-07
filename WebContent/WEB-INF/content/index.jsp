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
	
	<title>首页</title>

</head>
<body class="metrouicss" onload="prettyPrint()">

	<div class="nav-bar bg-color-blue">
		<div class="nav-bar-inner padding10">
			<div class="text-center">
				<a href="${pageContext.request.contextPath}/index.html"><h2 class="fg-color-white">广西大学教室信息化管理平台</h2></a>
			</div>
		</div>
	</div>

	<div id="page-index" class="page">
		<div class="page-region">
			<div class="page-region-content">
				<div class="grid">
					<div class="row">
						<div class="padding40 fg-color-darken text-center">
							<h3>欢迎使用广西大学教室信息化管理平台！</h3>
						</div>
					</div>
					<div class="row">
						<div class="span8 ">
							<div class="grid">
								<div class="row">
									<div class="span8 " >
									<!-- <h3><br>&nbsp;&nbsp;&nbsp;&nbsp;广西大学教室信息化管理平台：</h3><br> -->
									<!-- Baidu Button BEGIN -->
									<div id="bdshare" class="bdshare_t bds_tools_32 get-codes-bdshare">
									<a class="bds_tsina"></a>
									<a class="bds_qzone"></a>
									<a class="bds_tqq"></a>
									<a class="bds_renren"></a>
									<a class="bds_t163"></a>
									<span class="bds_more"></span>
									<a class="shareCount"></a>
									</div>
									<br><p>&nbsp;</p><p>&nbsp;</p>
									<script type="text/javascript" id="bdshare_js" data="type=tools&amp;uid=5146054" ></script>
									<script type="text/javascript" id="bdshell_js"></script>
									<script type="text/javascript">
										document.getElementById("bdshell_js").src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?cdnversion=" + Math.ceil(new Date()/3600000)
									</script>
									<!-- Baidu Button END -->
									</div>
								</div>
							</div>
							<div class="grid">
								<div class="row">
									<div class="span4 padding40 bg-color-red border-color-blueLight">
										<h2 class="fg-color-white">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;功能强大</h2>
									</div>

									<div class="span4 padding40 bg-color-blueDark border-color-blueLight">
										<h2 class="fg-color-white">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;简单专业</h2>
									</div>
								</div>
							</div>
							<div class="grid">
								<div class="row">
									<div class="span4 bg-color-blueLight" >
										<h3>&nbsp;&nbsp;&nbsp;&nbsp;欢迎</h3>
										<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;您好，您现在使用的是一套用于教室信息化管理的专业系统。</p>
										<h3>&nbsp;&nbsp;&nbsp;&nbsp;功能强大</h3>
										<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;本系统的目标是构建一个基于网络环境下的，实现学校教室信息化管理和实现高效管理的，具有良好整体性、可扩展性、安全性和跨平台性的教室信息化管理平台。
										</p>
										<br>
									</div>
									<div class="span4 bg-color-blueLight">
										<h3>&nbsp;&nbsp;&nbsp;&nbsp;简洁</h3>
										<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一站通使用方式，功能强大，操作简单。</p>
										<h3>&nbsp;&nbsp;&nbsp;&nbsp;专业</h3>
										<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;界面设计精美，优雅，功能强大，教室信息化管理轻松自如。</p>
										<br><br><br>
									</div>
								</div>
							</div>
						</div>
						<div class="span4 ">
							<a href="${pageContext.request.contextPath }/student/student-to-login.html" class="button command-button bg-color-green fg-color-white "
								style="width: 100%;">
								<i class="icon-arrow-right-3 place-right"
									style="font-size: 24pt; margin-top: 5px;"></i>
								<h3 class="fg-color-white">登录</h3>
								<small class="fg-color-white">学生用户</small>
							</a>
							<a href="${pageContext.request.contextPath }/admin/admin-to-login.html" class="button command-button bg-color-purple fg-color-white"
								style="width: 100%;">
								<i class="icon-arrow-right-3 place-right"
									style="font-size: 24pt; margin-top: 5px;"></i>
								<h3 class="fg-color-white">登录</h3>
								<small class="fg-color-white">管理员</small>
							</a>

							<div class="span4 padding30 text-center place-left bg-color-greenDark">
								<br><br>
								<h3 class="fg-color-white">如果您有任何疑问</h3>
								<p class="fg-color-white">
									可以<a  href="mailto:huangcongmin12@gmail.com">联系我们</a>
								</p>
								<a href="mailto:huangcongmin12@gmail.com"><h1><i class="icon-mail fg-color-white"></i></h1></a>
								<br>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
    <div  class="page">
    	<hr><br>
         <div style="font-size: 13px;">
                	Copyright &copy; 2013 HCM |EMAIL:huangcongmin12@gmail.com | Powered by <a style="text-decoration: none;" href="http://www.cloudfoundry.com/"><span style="color: #06CA19 ">Cloud Foundry</span></a>
          <br><br>
         </div>
    </div>
</body>
</html>
