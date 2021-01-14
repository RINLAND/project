<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       
 <%@include file = "/WEB-INF/views/grp_admin/grp_admin_header.jsp" %>

<body class="is-preload">

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Main -->
		<div id="main">
			<div class="inner">

				<!-- Header -->
				<header id="header">
					<a href="grp_main.html" class="logo"><strong>** Entertainment</strong> GroupWare</a>
					<ul class="login align-right">
						<span><strong>관리자로 접속하셨습니다.</strong></span>
						<span><a href="#">logout</a></span>
					</ul>
				</header>

				<!-- Content -->

				<div class="main-wrap">

					<div class="main-top flex flex-justify">
						<div class="box1">
							<span><strong>공지사항</strong></span>
							11111111111111111111111
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

				<%@include file = "/WEB-INF/views/grp_admin/grp_admin_menu.jsp" %>
				
		</div>

	</div>


</body>
</html>