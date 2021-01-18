<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@include file = "/WEB-INF/views/grp_admin/grp_admin_header.jsp" %>
    

<style>
		.mod {
			display: inline-block;
			width: 50px;
			height: 35px;
			text-align: center;
			line-height: 35px;
			border: 2px solid #6200EA;
			background-color: #6200EA;
			color: white;

		}

		.mod:hover {
			cursor: pointer;
			color: white;
			transition: 0.1s;
			font-weight: 700;
			border: 2px solid#6200EA;


		}
	
	</style>



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
					<h2>시스템</h2>
				</header>

				<div class="main">
					<div class="main-top">
						<h4 class="m-b20">게시판 생성</h4>
					</div>

					<div class="board-wrap bg-white">
					<form method="POST" id="frm">
						<table>
							<tr>
								<td class="td-10 center weight700  bg-sub">게시판 이름</td>
								<td class="td-15 p-lr3">
									<input type="text" name="boardName" id="boardName" class="input-100" maxlength="100"
										required />
								</td>
								<td class="td-10 center weight700  bg-sub"> 게시판 태그</td>
								<td class="td-15 p-lr3">
									<input type="text" placeholder="영어로만 입력하세요." name="boardTag" id="boardTag"
										class="input-30" maxlength="100" required />
								</td>
								<td class="td-10 center weight700  bg-sub"> 게시판 종류</td>
								<td class="td-15 p-lr3">
									<select class="center sel-100" name="boardType" id="boardType">
										<option value="notice">공지</option>
										<option value="free">일반</option>
									</select>
								</td>
								<td class="td-10 center weight700 bg-gray">게시판 부서</td>
								<td class="td-15 p-lr3">
									<input type="text" placeholder="어떤 부서의 게시판인지 입력하세요." name="boardTeam"
										id="boardTeam" class="input-100" maxlength="100" required />
								</td>
							</tr>
							<tr>

								<td class="td-10 center weight700  bg-sub font14">게시판 열람가능 등급</td>
								<td class="p-lr3">
									<select name="boardRead" id="boardRead" class="center sel-100">
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>

									</select>
								</td>
								<td class="td-10 center weight700  bg-sub font14">게시판 글 작성가능 등급</td>
								<td class="p-lr3">
									<select name="boardWrite" id="boardWrite" class="center sel-100">
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
									</select>
								</td>
								<td class="td-10 center weight700 bg-gray font14">자료다운로드가능 등급</td>
								<td class="p-lr3">
									<select name="boardDown" id="boardDown" class="center sel-100">
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
									</select>
								</td>
								<td class="td-10 center weight700 bg-gray font14">댓글 작성가능 등급</td>
								<td class="p-lr3">
									<select name="boardReply" id="boardReply" class="center sel-100">
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
									</select>
								</td>
							</tr>
							<tr>
								<td class="td-10 center weight700 bg-gray">게시판 색상</td>
								<td class="p-lr3">
									<select class="center sel-100" name="boardColor" id="boardColor">
										<option value="red">Red / #C62828</option>
										<option value="blue">Blue / #283593</option>
										<option value="skyblue">Sky Blue / #1565C0 </option>
										<option value="yellow">Yellow / #F9A825</option>
										<option value="Orange">Orange / #EF6C00</option>
										<option value="green">Green / #2E7D32</option>
										<option value="purple">Purple / #4527A0</option>
									</select>
								</td>

								<td class="td-10 center weight700 bg-gray">게시판 설명</td>
								<td class="td-10 p-lr3" colspan="3">
									<input type="text" placeholder="어떤 게시판인지 설명하는 말을 입력하세요." name="boardDetail"
										id="boardDetail" class="input-100" maxlength="100" required />
								</td>


								<td class="td-10 center weight700 bg-gray">자료실 여부</td>
								<td>
									<select name="boardReference" id="boardReference" class="center sel-100">
										<option value="yes">Y</option>
										<option value="no">N</option>
									</select>
								</td>

							</tr>

						</table>
						
						<div class="btn-grp center m-t5">
							<button type="submit" class="btn-on">생성완료</button>
							<button type="reset" class="btn-off">새로고침</button>
						</div>
					</form>
					</div>

				</div>

			</div>
		</div>


		<!-- Sidebar -->
		<div id="sidebar">
			<div class="inner">
				
				<!-- Menu -->
				<%@include file = "/WEB-INF/views/grp_admin/grp_admin_menu.jsp" %>

			
			</div>
		</div>

	</div>

</body>
</html>