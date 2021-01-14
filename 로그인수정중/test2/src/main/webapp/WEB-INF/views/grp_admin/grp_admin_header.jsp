<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${sessionScope.empNum == null}">
	<script>
		alert("등록된 사용자가 아닙니다. \n 관리자에게 문의하세요.");
		location.href="${pageContext.request.contextPath }/grp_login";
	</script>
</c:if>

<c:if test="${sessionScope.empAuth < 2}">
	<script>
		alert("접근 권한이 없습니다. \n 관리자에게 문의하세요.");
		location.href="${pageContext.request.contextPath }/grp_login";
	</script>
</c:if>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>VV Entertainment GroupWare</title>

	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/board_main.css" />
	 <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/board.css" />
	 <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/fontawesome-all.min.css" />
	 <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/main.css" />
	 <script src="https://kit.fontawesome.com/62ab751ce0.js" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath }/assets/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath }/assets/js/browser.min.js"></script>
	<script src="${pageContext.request.contextPath }/assets/js/breakpoints.min.js"></script>
	<script src="${pageContext.request.contextPath }/assets/js/util.js"></script>
	<script src="${pageContext.request.contextPath }/assets/js/main.js"></script>
	 
</head>
<body>

</body>
</html>