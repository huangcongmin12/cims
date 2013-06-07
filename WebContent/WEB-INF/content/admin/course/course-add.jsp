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
	
	<title>新增课程</title>
	
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
				<h3><small>新增课程</small></h3>
			</div>
			<a class="button mini bg-color-blue fg-color-white" href="${pageContext.request.contextPath }/admin/course-list.html"><i class="icon-arrow-left-3 "></i>返回列表</a>
			<c:if test="${!empty errorMsg }">
					<div><fieldset><font color="red" size='2'>${errorMsg }</font></fieldset></div>
			</c:if>
			<fieldset>
				<form action="${pageContext.request.contextPath }/admin/course-add.html" method="post">
					<table style="width: 84%">
						<tbody>
							<tr>
								<td class="right">课程编号：</td>
								<td><div class="input-control text ">
										<input type="text" id="courseNumber" name="course.courseNumber" value='${course.courseNumber }' />
										<button class="helper"></button>
									</div></td>
							</tr>
							<tr>
								<td class="right">课程名称：</td>
								<td><div class="input-control text ">
										<input type="text"  id="courseName" name="course.courseName"  value='${course.courseName }'/>
										<button class="helper"></button>
									</div></td>
							</tr>
							<tr>
								<td class="right">课程别名：</td>
								<td><div class="input-control text ">
										<input type="text" id="alias" name="course.alias" value='${course.alias }'/>
										<button class="helper"></button>
									</div></td>
							</tr>
							<tr>
								<td class="right">任课教师编号：</td>
								<td><div class="input-control text ">
										<input type="text" id="teacherNumber" name="course.teacher.teacherNumber" value='${course.teacher.teacherNumber }'/>
										<button class="helper"></button>
									</div></td>
							</tr>
							<tr>
								<td class="right">教室编号：</td>
								<td><div class="input-control text ">
										<input type="text" id="classroom" name="course.classroom.alias" value='${course.classroom.alias }'/>
										<button class="helper"></button>
									</div></td>
							</tr>
							<tr>
								<td class="right">起始周：</td>
								<td><div class="input-control text ">
										<input type="text" id="startWeek" name="course.startWeek" value='${course.startWeek }'/>
										<button class="helper"></button>
									</div></td>
							</tr>
							<tr>
								<td class="right">结束周：</td>
								<td><div class="input-control text ">
										<input type="text" id="endWeek" name="course.endWeek" value='${course.endWeek }'/>
										<button class="helper"></button>
									</div></td>
							</tr>
							<tr>
								<td class="right">周时间：</td>
								<td>
									<div class="input-control select">
        								<select name="course.week">
           							 	<option value="1">周一</option>
           							 	<option value="2">周二</option>
           							 	<option value="3">周三</option>
           							 	<option value="4">周四</option>
           							 	<option value="5">周五</option>
           							 	<option value="6">周六</option>
           							 	<option value="7">周日</option>
        								</select>
    								</div>
								</td>
							</tr>
							<tr>
								<td class="right">日时间：</td>
								<td>
									<div class="input-control select">
        								<select name="course.schoolTime">
           							 	<option value="1">第一大节</option>
           							 	<option value="2">第二大节</option>
           							 	<option value="3">第三大节</option>
           							 	<option value="4">第四大节</option>
        								</select>
    								</div>
								</td>
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
	if ($("#courseNumber").val().replace(/(^\s*)|(\s*$)/,"") == "") {
		MyDialog('请输入课程编号！');
		return false;
	}
	if ($("#courseName").val().replace(/(^\s*)|(\s*$)/,"") == "") {
		MyDialog('请输入课程名称！');
		return false;
	}
	if ($("#alias").val().replace(/(^\s*)|(\s*$)/,"") == "") {
		MyDialog('请输入课程别名！');
		return false;
	}
	if ($("#teacherNumber").val().replace(/(^\s*)|(\s*$)/,"") == "") {
		MyDialog('请输入任课教师编号！');
		return false;
	}
	if ($("#classroom").val().replace(/(^\s*)|(\s*$)/,"") == "") {
		MyDialog('请输入教室编号！');
		return false;
	}
	if ($("#startWeek").val().replace(/(^\s*)|(\s*$)/,"") == "") {
		MyDialog('请输入起始周数！');
		return false;
	}
	if ($("#endWeek").val().replace(/(^\s*)|(\s*$)/,"") == "") {
		MyDialog('请输入结束周数！');
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
