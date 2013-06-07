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
	<title>自习查询</title>

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
								<small>自习查询</small>
							</h3>
						</div>
						<fieldset>
							<legend>自习查询</legend>
							<div class="info">
								<c:if test="${!empty errorMsg }"><font size="2" color="red">${errorMsg }</font></c:if>
							</div>
							<br>
							<form id="login" name="form" action="${pageContext.request.contextPath }/student/search-selfstudy.html" method="post" class="">
								<div class="span8 ">
									<div class="grid">
										<div class="row">
											<div class="span4">
												<div class="grid ">
													<div class="row">
														<div class="span2 text-center">
															<h3>学年：</h3>
														</div>
														<div class="span2">
															<div class="input-control text disabled">
																<input type="text" value="2012-2013（下）" disabled="">
															</div>
														</div>
													</div>
												</div>
												<div class="grid">
													<div class="row">
														<div class="span2 text-center">
															<h3>周时：</h3>
														</div>
														<div class="span2">
															<div class="input-control select">
																<select id="week" name="week">
																	<option value="0">--选择--</option>
																	<option value="1">周一</option>
																	<option value="2">周二</option>
																	<option value="3">周三</option>
																	<option value="4">周四</option>
																	<option value="5">周五</option>
																	<option value="6">周六</option>
																	<option value="7">周日</option>
																</select>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="span4">
												<div class="grid ">
													<div class="row">
														<div class="span2 text-center">
															<h3>周数：</h3>
														</div>
														<div class="span2">
															<div class="input-control select">
																<select id="weekNumber" name="weekNumber">
																	<option value="0">--选择--</option>
																	<option value="1">第1周</option>
																	<option value="2">第2周</option>
																	<option value="3">第3周</option>
																	<option value="4">第4周</option>
																	<option value="5">第5周</option>
																	<option value="6">第6周</option>
																	<option value="7">第7周</option>
																	<option value="8">第8周</option>
																	<option value="9">第9周</option>
																	<option value="10">第10周</option>
																	<option value="11">第11周</option>
																	<option value="12">第12周</option>
																	<option value="13">第13周</option>
																	<option value="14">第14周</option>
																	<option value="15">第15周</option>
																	<option value="16">第16周</option>
																	<option value="17">第17周</option>
																	<option value="18">第18周</option>
																	<option value="19">第19周</option>
																	<option value="20">第20周</option>
																	<option value="22">第21周</option>
																</select>
															</div>
														</div>
													</div>
												</div>
												<div class="grid ">
													<div class="row">
														<div class="span2 text-center">
															<h3>节数：</h3>
														</div>
														<div class="span2">
															<div class="input-control select">
																<select id="schoolTime" name="schoolTime">
																	<option value="0">--选择--</option>
																	<option value="1">第1,2,3节</option>
																	<option value="2">第4,5节</option>
																	<option value="3">第6,7,8节</option>
																	<option value="4">第9,10,11节</option>
																</select>
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
												<input  id="submit" type="submit" class="button bg-color-blue fg-color-white" name="submit" value="查询" />
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
	if ($("#weekNumber").val().replace(/(^\s*)|(\s*$)/,"") == "0") {
		MyDialog('请选择周数！');
		return false;
	}
	if ($("#week").val().replace(/(^\s*)|(\s*$)/,"") == "0") {
		MyDialog('请选择周时间！');
		return false;
	}
	if ($("#schoolTime").val().replace(/(^\s*)|(\s*$)/,"") == "0") {
		MyDialog('先选择上课时间！');
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
	