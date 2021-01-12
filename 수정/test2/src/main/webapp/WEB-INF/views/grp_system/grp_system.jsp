<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@include file = "/WEB-INF/views/grp_admin/grp_admin_header.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body class="is-preload">

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Main -->
		<div id="main">
			<div class="inner">

				<!-- Header -->
				<header id="header">
					<a href="" class="logo"><strong>** Entertainment</strong> GroupWare</a>
					<ul class="login align-right">
						<span><strong>관리자로 접속하셨습니다.</strong></span>
						<span><a href="#">logout</a></span>
					</ul>
				</header>

				<!-- Content -->
				
					<header class="main" style="margin: 10px;">
						<h2>시스템</h2>
					</header>

					<div class="main">
						<div class="main-top">
							<h4 class="m-b20">회사정보 수정</h4>
						</div>

						<div class="board-wrap bg-white">
							<table>
								<tr>
									<td class="td-10 center weight700  bg-sub">로고타이틀</td>
									<td class="td-40 p-lr3">
										<input type="text" name="comName" id="comName" class="input-100" maxlength="100" required />
									</td>
									<td class="td-10 center weight700  bg-sub">서브로고타이틀</td>
									<td class="td-40 p-lr3">
										<input type="text" name="comSubName" id="comSubName" class="input-100" maxlength="100" required />
									</td>
								</tr>
								<tr>
									<td class="td-10 center weight700  bg-sub">대표명</td>
									<td class="td-40 p-lr3">
										<input type="text" name="comCeo" id="comCeo" class="input-100" maxlength="100" required />
									</td>
									<td class="td-10 center weight700  bg-sub">대표전화</td>
									<td class="td-40 p-lr3">
										<input type="text" name="comTel" id="comTel" class="input-100" maxlength="100" required />
									</td>
									
								</tr>
								<tr>
									<td  class="td-10 center weight700 bg-sub">URL</td>
									<td class="p-lr3" colspan="3">
										<input type="text" name="comUrl" id="comUrl" class="input-100" maxlength="50" required />
										
									</td>
									
								</tr>
								<tr>
									<td class="bg-gray weight700 td-10 center">COPYRIGHT</td>
									<td class="p-lr3" colspan="3">
										<input type="text" name="comCopy" id="comCopy" class="input-100" maxlength="200" required />
										
									</td>
									
								</tr>
								<tr>
									<td class="bg-gray weight700 td-10 center">접근권한</td>
									<td class="p-lr3" colspan="3">
										<select name="comAuth" id="comAuth">
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											
										</select>                        					
									</td>
									
								</tr>
								<tr>
									<td class="bg-gray weight700 td-10 center">타이틀</td>
									<td class="p-lr3" colspan="3">
									 <input type="text" name="comMainLogo" id="comMainLogo" class="input-100" maxlength="200" required />
																				   
									</td>
									
								</tr>
								<tr>
									<td class="bg-gray weight700 td-10 center">메뉴</td>
									<td class="p-lr3" colspan="3">
									 <input placeholder="메뉴는 (;)으로 구분하세요." type="text" name="comMenu" id="comMenu" class="input-100" maxlength="200"/>
																				   
									</td>
									
								</tr>
								<tr>
									<td class="bg-gray weight700 td-10 center">메인 텍스트 상단</td>
									<td class="p-lr3" colspan="3">
									 <input type="text" name="comMianUP" id="comMainUp" class="input-100" maxlength="200"  />
																				   
									</td>
									
								</tr>
								<tr>
									<td class="bg-gray weight700 td-10 center">메인 텍스트 하단</td>
									<td class="p-lr3" colspan="3">
									 <input type="text" name="comMianDown" id="comMainDown" class="input-100" maxlength="200" />
																				   
									</td>
									
								</tr>
							</table>
							<div class="btn-grp center m-t5">
								<button type="submit" class="btn-on">정보수정</button>
								<button type="reset" class="btn-off">새로고침</button>
							</div>
							
						</div>
						
						<div class="clearfix"></div>
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