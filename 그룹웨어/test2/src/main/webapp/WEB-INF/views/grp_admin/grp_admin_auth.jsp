<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <!-- Header -->
				<header id="header">
					<a href="${pageContext.request.contextPath}/grp_admin" class="logo"><strong>VV Entertainment</strong> GroupWare</a>
					<div class="login align-right">
						<span> <strong>	${empName} 로 접속하셨습니다.</strong></span>
						<span><a href="#" id="logout">logout</a></span>
						<div class="logout">
						<a href="${pageContext.request.contextPath}">
			<span class="noto font20" style="color:#6200EA">
				<i class="fas fa-home"></i>
			</span>
		</a>
	</div>
</div>
<script>
	$(function() {
		$("#logout").click(function() {
			$.ajax({
				url		: "${pageContext.request.contextPath}/grp_logout",
				type	: "POST",
				data	: "",
				success : function(data) {
					if( data == "success" ) {
						alert("로그아웃 되었습니다..");
						window.location.href = '${pageContext.request.contextPath}/grp_login';
					}
				},
				error	: function() {
					alert("시스템 에러!!");
				}
			});
		});
	});
</script>
</header>
				