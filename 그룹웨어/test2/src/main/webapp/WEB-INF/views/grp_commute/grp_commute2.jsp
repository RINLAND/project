<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/grp_commute/grp_commute_header.jsp"%>


<body class="is-preload">

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Main -->
		<div id="main">
			<div class="inner">

				<!-- Header -->
				<%@include file="/WEB-INF/views/grp_admin/grp_admin_auth.jsp"%>
				<!-- Content -->

				<header class="main" style="margin: 10px;">
					<h2>근태관리</h2>
				</header>
				<div class="main">
					<div class="main-top">
						<h4 class="m-b20">근태관리 > 2.출퇴근 관리</h4>
						<div class="search-wrap flex flex-justify  m-b5 bg-white">
							<div class=""></div>
							
						</div>


					</div>

					<div class="main-right-top bg-white p20"
						style="border: 1px solid #5ebfd9;">
						<h2 class="noto font16 m-b10">근태관리</h2>
						<p class="noto">2020년 09월 14일 월요일</p>
						<div class="attend flex flex-justify font14 noto weight700 m-t20">
							<span class="">출근시간</span> <span class="">AM 08:58</span>
						</div>
						<div class="attend flex flex-justify font14 noto weight700 m-t10">
							<span class="">퇴근시간</span> <span class="">PM 19:58</span>
						</div>
						<div class="attend flex flex-justify font14 noto weight700 m-t10">
							<span class="">현재상태</span> <span class="">업무중</span>
						</div>
						<div class="attend flex flex-justify font14 noto weight700 m-t20">
							<button
								style="width: 220px; border: 1px solid #5ebfd9; color: #5ebfd9; border-radius: 50px; padding: 10px 0;"
								class="noto font14 weight700">출근하기</button>
							<button
								style="width: 220px; border: 1px solid #ccc; color: #ccc; border-radius: 50px; padding: 10px 0;"
								class="noto font14 weight700">퇴근하기</button>
						</div>
					</div>

					<div class="clearfix"></div>
				</div>




			</div>
		</div>

		<!-- Sidebar -->
		<div id="sidebar">
			<div class="inner">

				<%@include
					file="/WEB-INF/views/grp_freeboard/grp_freeboard_menu.jsp"%>


			</div>
		</div>

	</div>



</body>


</html>