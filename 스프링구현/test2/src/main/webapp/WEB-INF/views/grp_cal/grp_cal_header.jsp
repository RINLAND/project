<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE HTML>
<html>


<head>
	<title>VV Entertainment GroupWare </title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/calender_main.css" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
	
	<script src="${pageContext.request.contextPath }/js/browser.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/breakpoints.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/util.js"></script>
	<script src="${pageContext.request.contextPath }/js/main.js"></script>
	<!-- datepicker(달력모양 css) -->
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
	<!-- datepicker(달력모양 css) -->

	<link href='${pageContext.request.contextPath}/calendar/core/main.css' rel='stylesheet' />
	<link href='${pageContext.request.contextPath}/calendar/daygrid/main.css' rel='stylesheet' />
	

	<style>
		.bg-gray {
			background-color: #eee;
		}

		#calendar {
			max-width: 1000px;
			margin: 0 auto;
		}
	</style>

</head>