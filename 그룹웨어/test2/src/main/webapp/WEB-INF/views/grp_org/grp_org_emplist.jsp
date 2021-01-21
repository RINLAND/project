<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@include file="/WEB-INF/views/grp_org/grp_org_header.jsp"%>

<body class="is-preload">

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Main -->
		<div id="main">
			<div class="inner">

				<!-- Header -->
				<%@include file="/WEB-INF/views/grp_org/grp_org_auth.jsp"%>

				<!-- Content -->
						
					<header class="main" style="margin: 10px;">
						<h2>조직도</h2>
					</header>

					<div class="main">
						<div class="main-top">
							<h4 class="m-b20">조직도 > 1.사원목록</h4>
							<div class="search-wrap flex flex-justify  m-b5 bg-white">
								<div class="">
									<span class="btn-count">전체게시물 수 123 / PAGE</span>
								</div>
								<div class="flex flex-justify"  >
									<form method="post" class="" action="grp_board_list.html"> </form>
										
										<select class="" >
											<option value="">사원명</option>
											<option value="">부서</option>
											<option value="">사원명+부서</option>
										</select>
									
										<input type="text" name="words" required style="margin-left:-2px" />
									
										<button type="submit" class="btn-off" style="margin-left:-2px">검색</button>
										<button type="button" class="btn-on"
											onClick="location.href='grp_employee_insert.html'">등록</button>
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
									<td class="td-5 ">팀</td>
									<td class="td-5">직급</td>
									<td class="td-10 ">직원번호</td>
									<td class="td-10">입사일</td>
									<td >이름</td>
									<td class="td-10">비밀번호</td>
									<td class="td-10">권한</td>
									<td class="td-10">승인여부</td>
								</tr>
								<tr class="center font14">
									<td>
										<input type="checkbox" />
									</td>
									<td>10</td>
									<td>영업팀</td>
									<td >사원</td>
									<td>20201214</td>
									<td>2018-09-21</td>
									<td>박사원</td>
									<td>123456</td>
									<td>권한</td>
									<td>승인</td>
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


				<%@include
					file="/WEB-INF/views/grp_freeboard/grp_freeboard_menu.jsp"%>


			</div>
		</div>

	</div>



</body>

<%@include file="/WEB-INF/views/grp_org/grp_org_footer.jsp"%>


</html>