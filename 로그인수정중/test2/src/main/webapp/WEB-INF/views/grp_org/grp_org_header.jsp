<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>

<head>
	<title>VV Entertainment GroupWare </title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/board_main.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/board.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/jquery.orgchart.css">
	
	<script src="https://kit.fontawesome.com/62ab751ce0.js" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath }/ckeditor/ckeditor.js"></script>
	<script src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/browser.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/breakpoints.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/util.js"></script>
	<script src="${pageContext.request.contextPath }/js/main.js"></script>
	
    <style>
        .orgchart .top-level .title {
            background-color: #6200EA;
            text-shadow: 1px 1px 1px rgba(255, 255, 255, 0.5);
            color: white;
        }

        .orgchart .high-level .title {
            background-color: #777777;
            color: white;
        }

        .orgchart .middle-level .title {
            background-color: #bcbcbc;
            color: white;
        }

        .orgchart .low-level .title {
            background-color: #e0e0e0;

        }

        .orgchart .bottom-level .title {
            background-color: #f0f0f0;

        }
        
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
    </style>
	

</head>
    