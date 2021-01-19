<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@include file = "/WEB-INF/views/grp_freeboard/grp_freeboard_header.jsp" %>

<body class="is-preload">

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Main -->
		<div id="main">
			<div class="inner">

				<!-- Header -->
				<%@include file = "/WEB-INF/views/grp_freeboard/grp_freeboard_auth.jsp" %>
			
				<!-- Content -->
				
					<header class="main" style="margin: 10px;">
						<h2>인사부 자유 게시판</h2>
					</header>

					<div class="main">
						<div class="main-top">
							<h4 class="m-b20">인사부 게시판</h4>
							<div class="search-wrap flex flex-justify  m-b5 bg-white">
								<div class="">
									<span class="btn-count">전체게시물 수 123 / PAGE</span>
								</div>
								<div class="flex flex-justify"  >
									<form method="post " class="" action="grp_board_list.html"></form>
										
										<select class="" >
											<option value="">게시물제목</option>
											<option value="">작성자</option>
											<option value="">작성자+제목</option>
										</select>
									
										<input type="text" name="words" required style="margin-left:-2px" />
									
										<button type="submit" class="btn-off" style="margin-left:-2px">검색</button>
										<button type="button" class="btn-on"
											onClick="location.href='grp_board_insert.html'">작성</button>
									</form>
								</div>
							</div>
							

						</div>

						<div class="board-wrap bg-white">
							<table style="table-layout: fixed;">
								<tr class="weight700 center tr-color f6 font14 ">
									<td class="td-3">
										<!-- td-width설정안한곳에 남은 %가 다 지정됨 -->
										<input type="checkbox" />
									</td>
									<td class="td-5">번호</td>
									<td class="td-5 ">분류</td>
									<td>게시물제목</td>
									<td class="td-5">작성자</td>
									<td class="td-5">조회</td>
									<td class="td-8">게시일</td>
									<td class="td-10">관리</td>
								</tr>
								<tr class="center font14">
									<td>
										<input type="checkbox" />
									</td>
									<td>10</td>
									<td>일반</td>
									<td class="left p-lr10" onclick="location.href='grp_freeboard_view.html'">
										게시물 등록 테스트입니다.
									</td>
									<td>관리자</td>
									<td>12</td>
									<td>2020.09.09</td>
									<td>
										<!-- input이면 type=submit -->
										<button type="button" class="s-btn-on" onclick="location.href='grp_notice_update.html?id=10'">수정</button>
										<button type="button" class="s-btn-off">삭제</button>
									</td>
								</tr>
							
							</table>
						</div>
						<div class="page-grp center m-t10">
							<span class="page "><a href=""><i class="fas fa-angle-double-left"></i></a></span>
							<span class="page"><a href=""><i class="fas fa-angle-left"></i></a></span>
							<span class="page page-active"><a href="" class="f6">1</a></span>
							<span class="page"><a href="">2</a></span>
							<span class="page"><a href="">3</a></span>
							<span class="page"><a href="">4</a></span>
							<span class="page"><a href="">5</a></span>
							<span class="page"><a href=""><i class="fas fa-angle-right"></i></a></span>
							<span class="page"><a href=""><i class="fas fa-angle-double-right"></i></a></span>
						</div>
						<div class="clearfix"></div>
					</div>


				

			</div>
		</div>

		<!-- Sidebar -->
		<div id="sidebar">
			<div class="inner">

				<%@include file = "/WEB-INF/views/grp_freeboard/grp_freeboard_menu.jsp" %>

			</div>
		</div>

	</div>

	

</body>

</html>