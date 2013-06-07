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
	
	<title>新增教室</title>
	
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
				<h3><small>新增教室</small></h3>
			</div>
			<a class="button mini bg-color-blue fg-color-white" href="${pageContext.request.contextPath }/admin/classroom-list.html"><i class="icon-arrow-left-3 "></i>返回列表</a>
			<c:if test="${!empty errorMsg }">
					<div><fieldset><font color="red" size='2'>${errorMsg }</font></fieldset></div>
			</c:if>
			<fieldset>
				<form action="${pageContext.request.contextPath }/admin/classroom-add.html" method="post">
					<table style="width: 84%">
						<tbody>
							<tr>
								<td class="right">教室名称：</td>
								<td><div class="input-control text ">
										<input type="text" id="alias" name="classroom.alias" value='${classroom.alias }' />
										<button class="helper"></button>
									</div></td>
							</tr>
							<tr>
								<td class="right">教学楼：</td>
								<td><div class="input-control text ">
										<input type="text"  id="building" name="classroom.building"  value='${classroom.building }'/>
										<button class="helper"></button>
									</div></td>
							</tr>
							<tr>
								<td class="right">楼层：</td>
								<td><div class="input-control text ">
										<input type="text" id="floor" name="classroom.floor" value='${classroom.floor }'/>
										<button class="helper"></button>
									</div></td>
							</tr>
							<tr>
								<td class="right">教室编号：</td>
								<td><div class="input-control text ">
										<input type="text" id="number" name="classroom.number" value='${classroom.number }'/>
										<button class="helper"></button>
									</div></td>
							</tr>
							<tr>
								<td class="right">容量：</td>
								<td><div class="input-control text ">
										<input type="text" id="containment" name="classroom.containment" value='${classroom.containment }'/>
										<button class="helper"></button>
									</div></td>
							</tr>
							<tr>
								<td class="right">多媒体：</td>
								<td><label onclick="" class="input-control radio">
										<input type="radio" checked="" name="classroom.isMultimedia" value="1" />
										<span class="helper">是</span>
								</label> <label onclick="" class="input-control radio"> <input
										type="radio" name="classroom.isMultimedia" value="0" /> <span
										class="helper">否</span></label></td>
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
	if ($("#alias").val().replace(/(^\s*)|(\s*$)/,"") == "") {
		MyDialog('请输入教室名称！');
		return false;
	}
	if ($("#building").val().replace(/(^\s*)|(\s*$)/,"") == "") {
		MyDialog('请输入教学楼！');
		return false;
	}
	if ($("#floor").val().replace(/(^\s*)|(\s*$)/,"") == "") {
		MyDialog('请输入楼层！');
		return false;
	}
	if ($("#number").val().replace(/(^\s*)|(\s*$)/,"") == "") {
		MyDialog('请输入教室编号！');
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
