<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
    
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>공지사항 작성</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/notice_text.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/notice_common.css">
	<script src="https://kit.fontawesome.com/62ab751ce0.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath }/ckeditor/ckeditor.js"></script>


</head>
<body>
    <div class="page-wrap ">
        <div class="container p20 bg-white">
            <div class="board-insert">
               
              <form name="form" method="POST" action="boardSave">
                     <div class="title">
                    <h3 class=" font18 m-b5">
                        공지사항 작성
                    </h3>
                </div>
                    <table>
                        <tr>
                            <td class="td-10 center weight700  bg-sub">게시글 제목</td>
                            <td class="td-40 p-lr3">
                             <input type="text" name="brdtitle" class="input-100" maxlength="100" required value="<c:out value="${boardInfo.brdtitle}"/>">    
                            </td>
                            <td class="td-10 center weight700  bg-sub">작성자</td>
                            <td class="td-40 p-lr3">
                              <input type="text" name="brdwriter" class="input-50" maxlength="5" required value="${sessionScope.empName }">  
                            </td>
                        </tr>
                       
                      
                        <tr>
                            <td  class="td-10 center weight700  bg-sub">내용</td>
                            <td colspan="3"  class="td-90 p-lr3" style="border: 2px; padding-bottom:2px ;">
                                <textarea name="brdmemo" id="editor" name="" style=" border: 1px solid #cccccc;padding: 10px; border-radius: 2px;" class="noto">
                                <c:out value="${boardInfo.brdmemo}"/>
                                </textarea>
                                <script>
                                    CKEDITOR.replace('editor');
                                    CKEDITOR.config.height=300;
                                </script>
                            </td>
                            
                        </tr>
          
                    </table>
                    <input type="hidden" name="brdno" value="<c:out value="${boardInfo.brdno}"/>"> 
                    <div class="btn-grp center m-t10">
                        <button type="submit" class="btn-normal">게시글저장</button>
                        <button type="button" onclick="location.href='${pageContext.request.contextPath }/notice/List'" class="btn-cancel">게시글목록</button>
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