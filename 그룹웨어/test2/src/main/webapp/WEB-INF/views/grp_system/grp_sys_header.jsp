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

<c:if test="${empAuth < 9}">
<script>
	alert("관리자만 접근 할 수 있는 메뉴입니다.\n관리자에게 문의하세요.");
	window.location.replace("${pageContext.request.contextPath}/grp_admin");
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
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/board_main.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/board.css" />
	
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
	
	<style>
		.mod {
			display: inline-block;
			width: 50px;
			height: 35px;
			text-align: center;
			line-height: 35px;
			border: 2px solid #6200EA;
			background-color:#6200EA ;
			color:white;

		}

		.mod:hover {
			cursor: pointer;
			color: white;
			transition: 0.1s;
			font-weight: 700;
			border: 2px solid#6200EA;


		}
		
		.fontwhite{
		color:white;
		
		}
		 .prev{
          
            border: 0;
            outline: 0;
            color:black;
            padding: 10px 30px;
            cursor: pointer;
        }

        .next{
            
            border: 0;
            outline: 0;
            color: black;
            padding: 10px 30px;
            cursor: pointer;
        }

        .banner{
            width:3000px;
            position: absolute;
            top: 0;
            left: 0;

        }

        .banner img{
            /* img는 inline타입이라 block타입으로 바꿔줌 */
            display: block;
            width: 640px;
            height: 610px;
            float: left;
        }

        .banner-wrap{
            /* 한장만 보이게 하고 다 숨기기 */
            width: 640px;
            height: 610px;
            overflow: hidden;
            position: relative;
        }
	</style>
</head>
