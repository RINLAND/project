<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ page session="true" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>VV Entertainment</title>

	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/fontawesome-all.min.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main1.css">
	
	 
	<script src="https://kit.fontawesome.com/62ab751ce0.js" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	
	<script src="${pageContext.request.contextPath}/js/jquery.ztree.core.js"></script>
	<script src="${pageContext.request.contextPath }/js/browser.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/breakpoints.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/util.js"></script>
	<script src="${pageContext.request.contextPath }/js/main.js"></script>
	<script src="${pageContext.request.contextPath }/js/tab.js"></script>
	<script src="${pageContext.request.contextPath }/js/jquery.treeview.js"></script>
	<script src="${pageContext.request.contextPath }/js/jquery.ztree.core.js"></script>
	<script src="${pageContext.request.contextPath }/js/treeview.js"></script>
	
</head>

<body class="is-preload">

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Main -->
		<div id="main">
			<div class="inner">
				<!-- Header -->
					<%@include file = "/WEB-INF/views/grp_admin/grp_admin_auth.jsp" %>

				<!-- Content -->

				<div class="main-wrap">

					<div class="main-top flex flex-justify">
						<div class="box1">
							<span><strong>공지사항</strong></span>
							11111111111111111111111
								${empId} 12로 접속하셨습니다.
						</div>
						<div class="box2">
							<span><strong>부서 게시판 최신글</strong></span>
							22222222222222222222222
						</div>
					</div>
					<div class="main-bottom flex flex-justify">
						<div class="box3">
							<span><strong>대기문서</strong></span>
							33333333333333333333333333
						</div>
						<div class="box3">
							<span><strong>일정/스케줄</strong></span>
							444444444444444444
						</div>
						<div class="box3">
							<span><strong>관련 참고 사이트</strong></span>
							5555555555555555555
						</div>
					</div>


				</div>

			</div>
		</div>

		<!-- Sidebar -->
		<div id="sidebar">
			<div class="inner">

				<%@include file="/WEB-INF/views/grp_freeboard/grp_freeboard_menu.jsp"%>				
		</div>

	</div>
</div>

</body>
</html>