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
	<title>教室查询</title>

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
								<small>教室查询</small>
							</h3>
						</div>
						<fieldset>
							<legend>教室查询</legend>
							<div class="info">
								<c:if test="${!empty errorMsg }">
									<font size="2" color="red">${errorMsg }</font>
								</c:if>
							</div>
							<br>
							<form id="login" name="form"
								action="${pageContext.request.contextPath }/student/search-classroom.html"
								method="post" class="">
								<div class="span8 ">
									<div class="grid">
										<div class="row">
											<div class="span4">
												<div class="grid ">
													<div class="row">
														<div class="span2 text-center">
															<h3>选择教室：</h3>
														</div>
														<div class="span2">
															<div class="input-control select">
																<select id="room" name="room">
																	<option value="">--选择--</option>
																	<c:forEach items="${croomList }" var="room">
																		<option value=${room.alias }>${room.alias }</option>
																	</c:forEach>
																</select>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="span4">
												<div class="grid ">
													<div class="row">
														<div class="span2">
															<input id="submit" type="submit"
																class="button bg-color-blue fg-color-white"
																name="submit" value="查询" />
														</div>
													</div>
												</div>
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
	</div> 
	<jsp:include page="/WEB-INF/content/default/student/footer.jsp"></jsp:include>
	<script type="text/javascript">
	<!--
		$("#submit").click(function() {
			if ($("#room").val().replace(/(^\s*)|(\s*$)/, "") == "") {
				MyDialog('请选择教室！');
				return false;
			}
		});
		function MyDialog(str) {
			$.Dialog({
				'title' : '提示信息：',
				'content' : str,
				'draggable' : true,
				'overlay' : true,
				'closeButton' : false,
				'buttonsAlign' : 'center',
				'position' : {
					'zone' : 'center'
				},
				'buttons' : {
					'确定' : {
						'action' : function() {
						}
					}
				}
			});
		}
	//-->
	</script>