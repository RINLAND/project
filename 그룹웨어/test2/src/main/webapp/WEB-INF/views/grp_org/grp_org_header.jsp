<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


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
    
    
            <!DOCTYPE HTML>
            <html>

            <head>
                <title>VV Entertainment GroupWare</title>
                <meta charset="utf-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
                <link rel="stylesheet" href="${pageContext.request.contextPath }/css/board_main.css" />
                <link rel="stylesheet" href="${pageContext.request.contextPath }/css/board.css" />
                <link rel="stylesheet" href="${pageContext.request.contextPath }/css/jquery.orgchart.css">
				
				<script src="https://kit.fontawesome.com/62ab751ce0.js" crossorigin="anonymous"></script>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
				
                <script src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
                <script src="${pageContext.request.contextPath }/js/browser.min.js"></script>
                <script src="${pageContext.request.contextPath }/js/breakpoints.min.js"></script>
                <script src="${pageContext.request.contextPath }/js/util.js"></script>
                <script src="${pageContext.request.contextPath }/js/main.js"></script>
                <script src="${pageContext.request.contextPath }/js/jquery.treeview.js"></script>
                <script src="${pageContext.request.contextPath }/js/jquery.ztree.core.js"></script>
                <script src="${pageContext.request.contextPath }/js/treeview.js"></script>
                <script src="${pageContext.request.contextPath }/js/tab.js"></script>
                <script src="${pageContext.request.contextPath }/js/jquery.orgchart.js"></script>
                
                <style>
                    .mod {
                        display: inline-block;
                        width: 50px;
                        height: 35px;
                        text-align: center;
                        line-height: 35px;
                        border: 2px solid #6200EA;
                        background-color: #6200EA;
                        color: white;
                    }

                    .mod:hover {
                        cursor: pointer;
                        color: white;
                        transition: 0.1s;
                        font-weight: 700;
                        border: 2px solid #6200EA;
                    }

                    .cbtn-on {
                        /* 버튼선택-height는 input,select와 끝선 맞추기 위해 동일하게 */
                        display: inline-block;
                        width: 75px;
                        height: 35px;
                        text-align: center;
                        line-height: 37px;
                        border-radius: 2px;
                        background-color: #651FFF;
                        border: 1px solid transparent;
                        color: white;
                    }

                    .cbtn-off {
                        display: inline-block;
                        width: 75px;
                        height: 35px;
                        text-align: center;
                        line-height: 37px;
                        border-radius: 2px;
                        background-color: #edeff5;
                        border: 1px solid #d4d4d4;
                        color: black;
                    }

                    .flex {
                        display: flex;
                    }

                    .flex-justify {
                        justify-content: space-between;
                    }

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
                    
                    
                    	/* 사진 */
        .member-left {
            width: 11%;
            /* 해상도 계산해서 만들어 줘야함 max-width */
            max-width: 150px;
        }

        .photo-area {
            /* member-left의 width에 설정된 11%만큼 꽉 채워서 쓰겠다 */
            width: 100%;
            border: 1px solid black;
        }

        .photo-area img {
            width: 100%;
            height: 180px;
            display: inline-block;
        }

        .member-right {
            width: 88.7%;
            max-width: 2000px;
		}
		
	.input-70{
    padding: 5px ;
    border-radius: 2px;
    border: 1px solid #d5d5d5;
    width: 70px;
    height: 35px;
    font-size: 12px;
}
		
                </style>



            </head>