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
<body>
	
	<div class="limiter">
		<div class="container-login100" >
			<div class="wrap-login100">
				<form class="login100-form validate-form" action="${pageContext.request.contextPath}/grp_login" autocomplete="off">
					<span class="login100-form-title p-b-26">
						VV ENTERTAINMENT
					</span>
					

					<div class="wrap-input100 validate-input" data-validate = "Valid ID">
						<input class="input100" type="text" name="ID">
						<span class="focus-input100" data-placeholder="ID"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<span class="btn-show-pass">
							<i class="zmdi zmdi-eye"></i>
						</span>
						<input class="input100" type="password" name="pass">
						<span class="focus-input100" data-placeholder="Password"></span>
					</div>

					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<a href="${pageContext.request.contextPath}">
							<button type="submit" class="login100-form-btn">
								Login
							</button>
							</a>
						</div>
					</div>

					<div class="register">
						<span class="main">
							<a href="${pageContext.request.contextPath}">Return to main</a>
						</span>
						<span class="account">
							<a href="${pageContext.request.contextPath}/grp_register" class="">Create New Account</a>
						</span>
						<div class="clearfix"></div>
					</div>
				</form>
			</div>
		</div>
	</div>
	
</body>
</html>