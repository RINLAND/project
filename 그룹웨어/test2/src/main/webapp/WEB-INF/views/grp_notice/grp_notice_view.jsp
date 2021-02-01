<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
   <title>VV Entertainment GroupWare 공지사항</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/notice_common.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/notice_text.css">    
    
    <script src="https://kit.fontawesome.com/62ab751ce0.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
   <script src="${pageContext.request.contextPath }/ckeditor/ckeditor.js"></script>


</head>
 <style>
    	.notice{
        	display: inline-block;
        	padding: 4px 8px;
        	background-color: #fd7216;
        	border-radius: 2px;
        	color: #fff;
        	
        }
    </style>
<body>
    <div class="page-wrap bg-gray p10">
        <div class="container p20 bg-white">
            <div class="board-insert">
               
                <form  method="POST">
                     <div class="title">
                    <h3 class=" font18 m-b5">
                        게시물 상세보기
                    </h3>
                </div>
                    <table>
                     
                        <tr>
                            <td  class="td-10 center weight700  bg-sub">게시글 제목</td>
                            <td colspan="3"  class="td-90 p-lr3">
                            <c:out value="${boardInfo.brdtitle}"/>
                            </td>
                            
                            
                        </tr>
                           <tr>
                            <td class="td-10 center weight700  bg-sub">작성자</td>
                            <td class="td-40 p-lr3">
                            <c:out value="${boardInfo.brdwriter}"/>      
                            </td>
                            <td class="td-10 center weight700  bg-sub">작성일</td>
                            <td class="td-40 p-lr3">
                            <c:out value="${boardInfo.brddate}"/>
                            </td>
                        </tr>
                        <tr>
                            <td  class="td-10 center weight700  bg-sub" style="height:300px;">내용</td>
                            <td colspan="3"  class="td-90 p-lr3" style="padding-bottom:2px ;">
                            <c:out value="${boardInfo.brdmemo}"/>
                            </td>
                            
                        </tr>
                       
                    </table>
                    <div class="btn">
                    
                    </div>
                    <div class="btn-grp center m-t10">
                    	<button type="button" class="btn-normal" onclick="location.href='modify?brdno=<c:out value="${boardInfo.brdno}"/>'">수정</button>
						<button type="button" class="btn-cancel" onclick="location.href='delete?brdno=<c:out value="${boardInfo.brdno}"/>'">삭제</button>
                        <button type="button" class="btn-cancel" onclick="location.href='${pageContext.request.contextPath }/notice/List'">목록</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
<script>
    $(function () {
        $("tr:nth-child(2n+1)").addClass("tr-even");
    });
</script>

</html>