<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/Header.jsp" %> 

<style>

	.register {
    margin-top: 20px;
}

.main{
    float: left;
}

.main a:hover {
    color: black;
    transition: 0.3s;
    font-weight: 700;
}

.main a,
.account a {
    color: #8898aa;
}

.account {
    float: right;
}

.account a:hover {
    color: black;
    transition: 0.3s;
    font-weight: 700;
}

.clearfix {
    clear: both;
}

</style>





</head>

						<div class="limiter">
							<div class="container-login100" >
								<div class="wrap-login100">
									<form method="POST" id="frm" class="login100-form validate-form" action="${pageContext.request.contextPath}/grp_login" autocomplete="off">
										<span class="login100-form-title p-b-26">
											VV ENTERTAINMENT
										</span>


										<div class="wrap-input100 validate-input" data-validate="Valid ID">
											<input class="input100" type="text" name="empNum" id="empNum" placeholder="사원번호를 입력하세요.">
											
										</div>

										<div class="wrap-input100 validate-input" data-validate="Enter password">
											<span class="btn-show-pass">
												<i class="zmdi zmdi-eye"></i>
											</span>
											<input class="input100" type="password" name="empPwd" id="empPwd" placeholder="비밀번호를 입력하세요." required >
										
										</div>

										<div class="container-login100-form-btn">
											<div class="wrap-login100-form-btn">
												<div class="login100-form-bgbtn"></div>
													<button type="submit" class="login100-form-btn" id="btn">
														Login
													</button>
											</div>
										</div>

										<div class="register">
											<span class="main">
												<a href="${pageContext.request.contextPath}">Return to main</a>
											</span>
											<span class="account">
												<a href="${pageContext.request.contextPath}/grp_register"
													class="">Create New Account</a>
											</span>
											<div class="clearfix"></div>
										</div>
									</form>
								</div>
							</div>
						</div>

					</body>
<script>
function checkInfo() {
	$("#btn").click(function() {
		if( $("#empNum").val() == '' ) {
			alert("사원번호를 입력하세요.");
			$("#empNum").focus();
			return false;
			
		}else if($("#empPwd").val() == '') {
			alert("비밀번호를 입력하세요.");
			$("#empPwd").focus();

	
				
		}
		$("#frm").submit();
		/* else{
			$.ajax({
				type: "POST",
				url: "/grp/grp_chk_empNum",
				data: {
					"empNum": $('#empNum').val()
				},
				success: function (data) {
					if ($.trim(data) == "success") {
						alert("사용 중인 사원번호입니다.");
						$("#frm").submit();
					}else{
						alert("사용할 수 없는 사원번호입니다.");
						$('#empNum').val("");
						$('#empNum').focus();
					}
				}
			});
		} */
	});	
}
$(function() {
	checkInfo();
});	
</script>
</html>