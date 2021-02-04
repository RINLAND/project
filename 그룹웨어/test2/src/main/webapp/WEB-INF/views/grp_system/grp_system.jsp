<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@include file = "/WEB-INF/views/grp_system/grp_sys_header.jsp" %>
    


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
							<h4 class="m-b20">회사정보 수정</h4>
						</div>

						<div class="board-wrap bg-white">
						 <form id="frm" method="post" action="${pageContext.request.contextPath }/system/grp_system">
								<table>
									<tr>
										<td class="td-10 center weight700  bg-sub">LOGO</td>
										<td class="td-40 p-lr3">
											<input type="text" name="sysLogo" id="sysLogo" class="input-100" maxlength="100" required />
										</td>
										<td class="td-10 center weight700  bg-sub">SUB LOGO</td>
										<td class="td-40 p-lr3">
											<input type="text" name="sysSub" id="sysSub" class="input-100" maxlength="100" required />
										</td>
									</tr>
									<tr>
										<td class="td-10 center weight700  bg-sub">CEO</td>
										<td class="td-40 p-lr3">
											<input type="text" name="sysCeo" id="sysCeo" class="input-100" maxlength="100" required />
										</td>
										<td class="td-10 center weight700  bg-sub">TELL</td>
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
										<td class="bg-gray weight700 td-10 center">ACCESS</td>
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
										<td class="bg-gray weight700 td-10 center">TITLE</td>
										<td class="p-lr3" colspan="3">
										 <input type="text" name="sysTitle" id="sysTitle" class="input-100" maxlength="200" required />
																					   
										</td>
										
									</tr>
									<tr>
										<td class="bg-gray weight700 td-10 center">ADDRESS</td>
										<td class="p-lr3" colspan="3">
										 <input placeholder="" type="text" name="sysAddr" id="sysAddr" class="input-100" maxlength="200"/>
																					   
										</td>
										
									</tr>
									<tr>
										<td class="bg-gray weight700 td-10 center">MAIN TOP TEXT</td>
										<td class="p-lr3" colspan="3">
										 <input type="text" name="sysUp" id="sysUp" class="input-100" maxlength="200"  />
																					   
										</td>
										
									</tr>
									<tr>
										<td class="bg-gray weight700 td-10 center">MAIN UNDER TEXT</td>
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
			<%@include file="/WEB-INF/views/grp_freeboard/grp_freeboard_menu.jsp"%>
	

			</div>
		</div>

	</div>

</body>
<script>
	function sysInfo(){
		
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
					$("#sysUp").val(resData.sysUp);
					$("#sysDown").val(resData.sysDown);
					$("#sysAddr").val(resData.sysAddr);
					},
					error : function(){
						alert("시스템에러");
						}
			});
		
		}

	$(function(){
		sysInfo();
		});
</script>
</html>