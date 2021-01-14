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
					<a href="" class="logo"><strong>VV Entertainment</strong> GroupWare</a>
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
						<form id="frm" method="post" action="${pageContext.request.contextPath }/system/grp_system">
							<table>
								<tr>
									<td class="td-10 center weight700  bg-sub">로고타이틀</td>
									<td class="td-40 p-lr3">
										<input type="text" name="sysLogo" id="sysLogo" class="input-100" maxlength="100" required />
									</td>
									<td class="td-10 center weight700  bg-sub">서브로고타이틀</td>
									<td class="td-40 p-lr3">
										<input type="text" name="sysSub" id="sysSub" class="input-100" maxlength="100" required />
									</td>
								</tr>
								<tr>
									<td class="td-10 center weight700  bg-sub">대표명</td>
									<td class="td-40 p-lr3">
										<input type="text" name="sysCeo" id="sysCeo" class="input-100" maxlength="100" required />
									</td>
									<td class="td-10 center weight700  bg-sub">대표전화</td>
									<td class="td-40 p-lr3">
										<input type="text" name="sysTell" id="sysTell" class="input-100" maxlength="100" required />
									</td>
									
								</tr>
								<tr>
									<td  class="td-10 center weight700 bg-sub">URL</td>
									<td class="p-lr3" colspan="3">
										<input type="text" name="sysUrl" id="sysUrl" class="input-100" maxlength="50" required />
										
									</td>
									
								</tr>
								<tr>
									<td class="bg-gray weight700 td-10 center">COPYRIGHT</td>
									<td class="p-lr3" colspan="3">
										<input type="text" name="sysCopy" id="sysCopy" class="input-100" maxlength="200" required />
										
									</td>
									
								</tr>
								<tr>
									<td class="bg-gray weight700 td-10 center">접근권한</td>
									<td class="p-lr3" colspan="3">
										<select name="sysAuth" id="sysAuth">
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
									 <input type="text" name="sysTitle" id="sysTitle" class="input-100" maxlength="200" required />
																				   
									</td>
									
								</tr>
								<tr>
									<td class="bg-gray weight700 td-10 center">주소</td>
									<td class="p-lr3" colspan="3">
									 <input  type="text" name="sysAddr" id="sysAddr" class="input-100" maxlength="200"/>
																				   
									</td>
									
								</tr>
								<tr>
									<td class="bg-gray weight700 td-10 center">메인 텍스트 상단</td>
									<td class="p-lr3" colspan="3">
									 <input type="text" name="sysUp" id="sysUp" class="input-100" maxlength="200"  />
																				   
									</td>
									
								</tr>
								<tr>
									<td class="bg-gray weight700 td-10 center">메인 텍스트 하단</td>
									<td class="p-lr3" colspan="3">
									 <input type="text" name="sysDown" id="sysDown" class="input-100" maxlength="200" />
																				   
									</td>
									
								</tr>
							</table>
							<div class="btn-grp center m-t5">
								<button type="submit" class="btn-on">정보수정</button>
								<button type="reset" class="btn-off">새로고침</button>
							</div>
							</form>
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

<script>
    $(function () {
        $("tr:nth-child(2n+1)").addClass("tr-even");
    });
</script>
<script>
	function comInfo(){
		
		$.ajax({
				url : "${pageContext.request.contextPath }/system",
				type : "post",
				data : "",
				success : function(resData){
					$("#sysLogo").val(resData.sysLogo);
					$("#sysSub").val(resData.sysSub);
					$("#sysCeo").val(resData.sysCeo);
					$("#sysTell").val(resData.sysTell);
					$("#sysUrl").val(resData.sysUrl);
					$("#sysCopy").val(resData.sysCopy);
					$("#sysAuth").val(resData.sysAuth);
					$("#sysTitle").val(resData.sysTitle);
					},
					error : function(){
						alert("시스템에러");
						}
			});
		
		}

	$(function(){
		comInfo();
		});
</html>
</script>