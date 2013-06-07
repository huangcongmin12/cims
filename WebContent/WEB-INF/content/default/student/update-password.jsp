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
	    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/modern/dialog.js"></script>
	<title>修改密码</title>

</head>
<body class="metrouicss" onload="prettyPrint()">
	<jsp:include page="/WEB-INF/content/default/student/nav.jsp" />
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
					<div class="row">
						<div style="text-align: center;">
							<h3>
								<small>修改密码</small>
							</h3>
						</div>
						<fieldset>
							<legend>修改密码</legend>
							<div class="info">
								<c:if test="${!empty errorMsg }"><font size="2" color="red">${errorMsg }</font></c:if>
							</div>
							<br>
							<form id="login" name="form" action="${pageContext.request.contextPath }/student/update-password.html" method="post">
								<input type="hidden" name = "student.id" value="${stu.id }" readonly="readonly">
								<div class="span8 ">
									<div class="grid">
										<div class="row">
											<div class="span4">
												<div class="grid ">
													<div class="row">
														<div class="span2 text-center">
															<h3>登录名：</h3>
														</div>
														<div class="span2">
															<div class="input-control text">
														        <input type="text" name="username" id="username" value=${stu.userName } />
														    </div>
														</div>
													</div>
												</div>
												<div class="grid">
													<div class="row">
														<div class="span2 text-center">
															<h3>新密码：</h3>
														</div>
														<div class="span2">
															 <div class="input-control password">
														        <input type="password" id="newPWD" name="newPWD" />
														    </div>
														</div>
													</div>
												</div>
											</div>
											<div class="span4">
												<div class="grid ">
													<div class="row">
														<div class="span2 text-center">
															<h3>原始密码：</h3>
														</div>
														<div class="span2">
															<div class="input-control password">
														        <input type="password"  id="password" name="password" />
														    </div>
														</div>
													</div>
												</div>
												<div class="grid ">
													<div class="row">
														<div class="span2 text-center">
															<h3>确认密码：</h3>
														</div>
														<div class="span2">
															 <div class="input-control password">
														        <input type="password" id="confPWD" name="confPWD"/>
														    </div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="grid">
										<div class="row">
											<div class="span2">
												<input  id="submit" type="submit" class="button bg-color-blue fg-color-white" name="submit" value="提交" />
											</div>
										</div>
									</div>
								</div>
							</form>
						</fieldset>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="/WEB-INF/content/default/student/footer.jsp"></jsp:include>
	<script type="text/javascript">
<!--
$("#submit").click(function() {
	if ($("#username").val().replace(/(^\s*)|(\s*$)/,"") == "") {
		MyDialog('登录名不能为空 ');
		return false;
	}
	if ($("#password").val().replace(/(^\s*)|(\s*$)/,"") == "") {
		MyDialog('原始密码不能为空 ');
		return false;
	}
	if ($("#newPWD").val().replace(/(^\s*)|(\s*$)/,"") == "") {
		MyDialog('新密码不能为空');
		return false;
	}
	if ($("#confPWD").val().replace(/(^\s*)|(\s*$)/,"") == "") {
		MyDialog('确认密码不能为空 ');
		return false;
	}
	if ($("#confPWD").val().replace(/(^\s*)|(\s*$)/,"") != $("#newPWD").val().replace(/(^\s*)|(\s*$)/,"")) {
		MyDialog('两次输入的密码不一致，请却认。 ');
		return false;
	}
});
function MyDialog(str)  
{
	$.Dialog({
        'title'       : '提示信息：',
        'content'     : str,
        'draggable'   : true,
        'overlay'     : true,
        'closeButton' : false,
        'buttonsAlign': 'center',
        'position'    : {
            'zone'    : 'center'
        },
        'buttons'     : {
            '确定'     : {
                'action': function(){}
            }
        }
    });
}
//-->
</script>
	