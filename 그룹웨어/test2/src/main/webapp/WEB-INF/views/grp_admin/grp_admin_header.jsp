<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="true" %>

<c:if test="${empNum == null}">
<script>
	alert("등록된 사용자가 아닙니다.\n관리자에게 문의하세요.");
	window.location.replace("${pageContext.request.contextPath}/grp_login");
	</script>
</c:if>

<c:if test="${empAuth < 2}">
<script>
	alert("접근 권한이 없습니다.\n관리자에게 문의하세요.");
	window.location.replace("${pageContext.request.contextPath}/grp_login");
	</script>
</c:if>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>VV Entertainment</title>

	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/fontawesome-all.min.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main1.css">
	
	<script src="https://kit.fontawesome.com/62ab751ce0.js" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	
<script src="${pageContext.request.contextPath}/js/jquery.ztree.core.js"></script>
	<script src="${pageContext.request.contextPath }/js/browser.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/breakpoints.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/util.js"></script>
	<script src="${pageContext.request.contextPath }/js/main.js"></script>
	<script src="${pageContext.request.contextPath }/js/tab.js"></script>
	<script src="${pageContext.request.contextPath }/js/jquery.treeview.js"></script>
	<script src="${pageContext.request.contextPath }/js/jquery.ztree.core.js"></script>
	<script src="${pageContext.request.contextPath }/js/treeview.js"></script>
</head>
