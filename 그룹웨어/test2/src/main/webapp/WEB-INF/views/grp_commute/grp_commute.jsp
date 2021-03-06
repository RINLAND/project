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
				<%@include file = "/WEB-INF/views/grp_admin/grp_admin_auth.jsp" %>
				<!-- Content -->

				<header class="main" style="margin: 10px;">
					<h2>근태관리</h2>
				</header>
				<div class="main">
					<div class="main-top">
						<h4 class="m-b20">근태관리 > 1. 나의 근태 현황</h4>
						<div class="search-wrap flex flex-justify  m-b5 bg-white">
							<div class="">
								
							</div>
							<div class="flex flex-justify">
								<form method="post" class="flex flex-justify" action="grp_board_list.html">

						<div class="attend flex flex-justify font14 noto weight700 m-t20">
							<button
								style="width: 150px; border: 1px solid #6200EA; color: #6200EA; border-radius: 50px; padding: 10px 0;"
								class="noto font14 weight700">출근하기</button>
							
						</div>
								</form>
								<form method="post" class="flex flex-justify" action="grp_board_list.html">

						<div class="attend flex flex-justify font14 noto weight700 m-t20">
							
							<button
								style="width: 150px; border: 1px solid #ccc; color: #ccc; border-radius: 50px; padding: 10px 0;"
								class="noto font14 weight700">퇴근하기</button>
						</div>
								</form>
							</div>
						</div>


					</div>

					<div class="board-wrap bg-white">
						<table style="table-layout: fixed;">
							<tr class="weight700 center tr-color f6 font14 ">
								<td class="td-3">
									<!-- td-width설정안한곳에 남은 %가 다 지정됨 --> <input type="checkbox" />
								</td>
								<td class="td-5">번호</td>
								<td class="td-10">사번</td>
								<td class="td-10 ">일자</td>
								<td>이름</td>
								<td class="td-10">출근시간</td>
								
								<td class="td-10">퇴근시간</td>
								<td class="td-10">총 근무 시간</td>
								<td class="td-10">비고</td>
							</tr>
							<tr class="center font14">
								<td><input type="checkbox" /></td>
								<td>1</td>
								<td>20180515</td>
								<td>2020-12-15</td>
								<td class="center p-lr10">김사원</td>
								<td>08:50</td>
								
								<td>20:10</td>
								<td>08:50</td>
								<td><select class="">
										<option value="">연차</option>
										<option value="">휴가</option>
										<option value="">무단결근</option>
										<option value="">오전반차</option>
										<option value="">오후반차</option>
								</select></td>
							</tr>

						</table>
					</div>
					<div class="page-grp center m-t10">
						<span class="page "><a href=""><i
								class="fas fa-angle-double-left"></i></a></span> <span class="page"><a
							href=""><i class="fas fa-angle-left"></i></a></span> <span
							class="page page-active"><a href="" class="f6">1</a></span> <span
							class="page"><a href="">2</a></span> <span class="page"><a
							href="">3</a></span> <span class="page"><a href="">4</a></span> <span
							class="page"><a href="">5</a></span> <span class="page"><a
							href=""><i class="fas fa-angle-right"></i></a></span> <span class="page"><a
							href=""><i class="fas fa-angle-double-right"></i></a></span>
					</div>
					<div class="clearfix"></div>
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