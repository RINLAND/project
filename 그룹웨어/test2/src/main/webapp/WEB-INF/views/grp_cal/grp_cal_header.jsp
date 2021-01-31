<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<c:if test="${empNum == null}">
<script>
	alert("등록된 사용자가 아닙니다.\n관리자에게 문의하세요.");
	window.location.replace("${pageContext.request.contextPath}/grp_login");
	</script>
</c:if>

<c:if test="${empAuth < 2}">
<script>
	alert("접근 권한이 없습니다.\n관리자에게 문의하세요.");
	window.location.replace("${pageContext.request.contextPath}/grp_login");
	</script>
</c:if>

<!DOCTYPE HTML>
<html>

<head>
	<title>VV Entertainment GroupWare</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />

	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main1.css">
	<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.2.0/css/all.css">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>

	<script src="${pageContext.request.contextPath}/js/jquery.ztree.core.js"></script>
	<script src="${pageContext.request.contextPath }/js/browser.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/breakpoints.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/util.js"></script>
	<script src="${pageContext.request.contextPath }/js/tab.js"></script>
	<script src="${pageContext.request.contextPath }/js/jquery.treeview.js"></script>
	<script src="${pageContext.request.contextPath }/js/jquery.ztree.core.js"></script>
	<script src="${pageContext.request.contextPath }/js/treeview.js"></script>
	
	<style>
		.bg-gray {
			background-color: #eee;
		}

		#calendar {
			max-width: 1200px;
			margin: 0 auto;
		}

		.cbtn-on {
			/* 버튼선택-height는 input,select와 끝선 맞추기 위해 동일하게 */
			display: inline-block;
			width: 100px;
			height: 40px;
			text-align: center;
			line-height: 37px;
			border-radius: 2px;
			background-color: #651FFF;
			border: 1px solid transparent;
			color: white;
		}

		.cbtn-off {
			display: inline-block;
			width: 100px;
			height: 40px;
			text-align: center;
			line-height: 37px;
			border-radius: 2px;
			background-color: #edeff5;
			border: 1px solid #d4d4d4;
			color: black;
		}

	
	</style>



</head>
