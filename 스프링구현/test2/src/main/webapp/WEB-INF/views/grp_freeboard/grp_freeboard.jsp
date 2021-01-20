<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="/WEB-INF/views/grp_freeboard/grp_freeboard_header.jsp"%>

<body class="is-preload">

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Main -->
		<div id="main">
			<div class="inner">

				<!-- Header -->
				<%@include
					file="/WEB-INF/views/grp_freeboard/grp_freeboard_auth.jsp"%>

				<!-- Content -->

				<header class="main" style="margin: 10px;">
					<h2>자유게시판</h2>
				</header>

				<div class="main">
					<div class="main-top">
						<h4 class="m-b20">자유게시판 > 자유게시판목록</h4>
						<div class="search-wrap flex flex-justify  m-b5 bg-white">
							<div class="">
								<span class="btn-count">전체게시판 수 123 / PAGE</span>
							</div>
							<div class="flex flex-justify">
								<form method="post " class="" action="grp_board_list.html"></form>

								<select class="">
									<option value="">게시판 색상</option>
									<option value="">게시판 생성자</option>
									<option value="">게시판 제목</option>
								</select> <input type="text" name="words" required
									style="margin-left: -2px" />

								<button type="submit" class="btn-off" style="margin-left: -2px">검색</button>
								<button type="button" class="btn-on"
									onClick="location.href='grp_system_board.html'">생성</button>
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
								<td class="td-10">부서</td>
								<td>게시판 제목</td>
								<td class="td-10">게시판 생성자</td>
								<td class="td-10">게시판 색상</td>
								<td class="td-8">생성일자</td>
								<td class="td-10">게시판 관리</td>
							</tr>
							<tr class="center font14">
								<td><input type="checkbox" /></td>
								<td>1</td>
								<td>인사부</td>
								<td class="center p-lr10"
									onclick="location.href='grp_boardfree_list.html'">인사부
									자유게시판</td>
								<td>관리자</td>
								<td>Blue / #283593</td>
								<td>2020.09.09</td>
								<td>
									<!-- input이면 type=submit -->
									<button type="button" class="s-btn-on"
										onclick="location.href='grp_notice_update.html?id=10'">수정</button>
									<button type="button" class="s-btn-off">삭제</button>
								</td>
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

				<%@include
					file="/WEB-INF/views/grp_freeboard/grp_freeboard_menu.jsp"%>


			</div>
		</div>

	</div>


</body>

</html>