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
	
	<title>添加</title>
	
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
				<h3><small>添加学生用户</small></h3>
			</div>
			<a class="button mini bg-color-blue fg-color-white" href="${pageContext.request.contextPath }/admin/student-list.html"><i class="icon-arrow-left-3 "></i>返回列表</a>
			<c:if test="${!empty errorMsg }">
					<div><fieldset><font color="red" size='2'>${errorMsg }</font></fieldset></div>
			</c:if>
			<fieldset>
				<form action="${pageContext.request.contextPath }/admin/student-add.html" method="post">
					<table style="width: 84%">
						<tbody>
							<tr>
								<td class="right">学号：</td>
								<td><div class="input-control text ">
										<input type="text" id="studentNumber" name="student.studentNumber" value='${student.studentNumber }' />
										<button class="helper"></button>
									</div></td>
							</tr>
							<tr>
								<td class="right">真实姓名：</td>
								<td><div class="input-control text ">
										<input type="text"  id="name" name="student.name"  value='${student.name }'/>
										<button class="helper"></button>
									</div></td>
							</tr>
							<tr>
								<td class="right">性别：</td>
								<td><label onclick="" class="input-control radio">
										<input type="radio" checked=""  id="sex" name="sex" value="0" /> <span
										class="helper">男</span>
								</label> <label onclick="" class="input-control radio"> <input
										type="radio" name="sex" value="1" /> <span class="helper">女</span></label></td>
							</tr>
							<tr>
								<td class="right">登录名称：</td>
								<td><div class="input-control text ">
										<input type="text" id="userName" name="student.userName" value='${student.userName }'/>
										<button class="helper"></button>
									</div></td>
							</tr>
							<tr>
								<td class="right">登录密码：</td>
								<td><div class="input-control text ">
										<input type="password" id="password" name="student.password" value='${student.password }'/>
										<button class="helper"></button>
									</div></td>
							</tr>
							<tr>
								<td class="right">邮箱：</td>
								<td><div class="input-control text ">
										<input type="text" id="email" name="student.email" value='${student.email }'/>
										<button class="helper"></button>
									</div></td>
							</tr>
							<tr>
								<td class="right">学院：</td>
								<td><div class="input-control text ">
										<input type="text" name="student.department" value='${student.department }'/>
										<button class="helper"></button>
									</div></td>
							</tr>
							<tr>
								<td class="right">年级：</td>
								<td><div class="input-control text ">
										<input type="text" name="student.grade" value='${student.grade }'/>
										<button class="helper"></button>
									</div></td>
							</tr>
							<tr>
								<td class="right">专业班级：</td>
								<td><div class="input-control text ">
										<input type="text" name="student.classes" value='${student.classes }'/>
										<button class="helper"></button>
									</div></td>
							</tr>
							<tr>
								<td class="right">状态：</td>
								<td><label onclick="" class="input-control radio">
										<input type="radio" checked="" name="student.status" value="0" />
										<span class="helper">启用</span>
								</label> <label onclick="" class="input-control radio"> <input
										type="radio" name="student.status" value="1" /> <span
										class="helper">禁用</span></label></td>
							</tr>
							</tbody>
							<tfoot>
							<tr>
								<td colspan="2">&nbsp;</td>
							</tr>
							<tr>
								<td colspan="2"><span class="offset6">
								<input id="submit" class="button bg-color-blue fg-color-white" type="submit" value="提交" /></span></td>
							</tr>
							</tfoot>
					</table>
				</form>
			</fieldset>
		</div>
	</div>
</div>
<jsp:include page="/WEB-INF/content/admin/footer.jsp"></jsp:include>
<script type="text/javascript">
<!--
$("#submit").click(function() {
	if ($("#studentNumber").val().replace(/(^\s*)|(\s*$)/,"") == "") {
		MyDialog('请输入学号！');
		return false;
	}
	if ($("#name").val().replace(/(^\s*)|(\s*$)/,"") == "") {
		MyDialog('请输入真实姓名！');
		return false;
	}
	if ($("#userName").val().replace(/(^\s*)|(\s*$)/,"") == "") {
		MyDialog('请输入登录名！');
		return false;
	}
	if ($("#password").val().replace(/(^\s*)|(\s*$)/,"") == "") {
		MyDialog('请输入登录密码！');
		return false;
	}
	if ($("#email").val().replace(/(^\s*)|(\s*$)/,"") == "") {
		MyDialog('请输入邮箱 ！');
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
