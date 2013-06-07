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
	<title>登录</title>
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
						<fieldset>
						<legend>管理员<label>登录</label></legend>
						<div class="span12 ">
							<div class="grid">
								<div class="row">
									<div class="span5">
										<form id="login" name="form" action="${pageContext.request.contextPath }/admin/admin-login.html" method="post" class="">
										<div class="grid">
												<div class="row">
													<div class="span2">
														<h3 ><big>登录</big></h3>
													</div>
													<div class="span3">
													</div>
												</div>
										</div>
										<hr>
										<div id="info">
										<c:if test="${!empty error_msg }">
											<font size=2 color="red"> ${error_msg }</font>
										</c:if>
										</div>
										<br>
										<div class="grid ">
												<div class="row">
													<div class="span2">
														<h3>用户名：</h3>
													</div>
				
													<div class="span3">
													<div class="input-control text ">
														<input id="username" type="text" name="username" value="${username }" placeholder="用户名/邮箱" autofocus required>
														<button class="helper"></button>
													</div>
													</div>
												</div>
											</div>
											
											<div class="grid">
												<div class="row">
													<div class="span2">
														<h3>密码：</h3>
													</div>
														<div class="span3">
															<div class="input-control password">
															<input id="password" type="password" name="password" value="${password }" placeholder="密码" required>
															<button class="helper"></button>
														</div>
													</div>
												</div>
											</div>
											<div class="grid">
												<div class="row">
													<div class="span2">
														<input type="submit" class="button bg-color-blue fg-color-white" name="submit" value="登录"  />
													</div>
														<div class="span3">
															<input type="reset" class="button bg-color-blue fg-color-white" value="重置"/>
														</div>
												</div>
											 </div>
											<div class="grid">
												<div class="row">
													<!-- Baidu Button BEGIN -->
													<br>
													<div id="bdshare" class="bdshare_t bds_tools_32 get-codes-bdshare">
													<a class="bds_tsina"></a>
													<a class="bds_qzone"></a>
													<a class="bds_tqq"></a>
													<a class="bds_renren"></a>
													<a class="bds_t163"></a>
													</div><br>
													<script type="text/javascript" id="bdshare_js" data="type=tools&amp;mini=1&amp;uid=5146054" ></script>
													<script type="text/javascript" id="bdshell_js"></script>
													<script type="text/javascript">
													document.getElementById("bdshell_js").src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?cdnversion=" + Math.ceil(new Date()/3600000)
													</script>
													<!-- Baidu Button END -->
												</div>
											 </div>
										</form>
									</div>
									<div class="span6 offset1">
										<h3>简单</h3>
										<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一站通使用方式，功能强大，操作简单。</p>
										<h3>专业</h3>
										<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;界面设计精美，优雅，功能强大，教室信息化管理轻松自如。</p>
										<br>
									</div>
								</div>
							</div>
						</div>
						</fieldset>
					</div>
				</div>
			</div>
		</div>
	</div>
    <div  class="page">
         <div style="font-size: 13px;">
                	Copyright &copy; 2013 HCM |EMAIL:huangcongmin12@gmail.com | Powered by <a style="text-decoration: none;" href="http://www.cloudfoundry.com/"><span style="color: #06CA19 ">Cloud Foundry</span></a>
                	<p>&nbsp;<p/>
         </div>
    </div>
</body>
</html>
	
