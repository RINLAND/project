<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/grp_freeboard/article_header.jsp"%>


<body>
    <div class="page-wrap p10">
        <div class="container p20 bg-white">
            <div class="board-insert">
               
                <form enctype="multipart/form-data" method="POST" action="${pageContext.request.contextPath }/article/grp_article_insert">
                	<input type="hidden" name="boardCode" value="${boardCode }" />
                     <div class="title">
                    <h3 class=" font18 m-b5">
                        ${boardTitle }
                    </h3>
                </div>
                    <table>
                        <tr>
                            <td class="td-10 center weight700  bg-sub" style="background-color: ${boardColor}">게시글 분류</td>
                            <td class="td-40 p-lr3">
                                <select name="division" class="sel-100">
                                    <option value="Y">공지사항</option>
                                    <option value="N">일반게시글</option>
                                </select>
                            </td>
                            <td class="td-10 center weight700  bg-sub" style="background-color: ${boardColor}">게시글 상태</td>
                            <td class="td-40 p-lr3">
                                <input type="password" maxlength="4" name="passwd"/> 비밀글
                            </td>
                        </tr>
                        <tr>
                            <td  class="td-10 center weight700  bg-sub" style="background-color: ${boardColor}">게시글 제목</td>
                            <td colspan="3"  class="td-90 p-lr3">
                                <input type="text" name="subject" class="input-100" maxlength="100" required/> 
                            </td>
                            
                        </tr>
                        <tr>
                            <td  class="td-10 center weight700 bg-sub" style="background-color: ${boardColor}">작성자</td>
                            <td colspan="3"  class="td-90 p-lr3">
                                <input type="text" value="${sessionScope.empName }" name="writer"  class="input-50" maxlength="5" required/> 
                            </td>
                            
                        </tr>
                        <tr>
                            <td  class="td-10 center weight700  bg-sub" style="background-color: ${boardColor}">내용</td>
                            <td colspan="3"  class="td-90 p-lr3" style="border: 2px; padding-bottom:2px ;">
                                <textarea id="editor" name="content" style=" border: 1px solid #cccccc;padding: 10px; border-radius: 2px;" class="noto"></textarea>
                                
                            </td>
                            
                        </tr>
                        <tr>
                            <td  class="td-10 center weight700 bg-sub" style="background-color: ${boardColor}">첨부파일</td>
                            <td colspan="3"  class="td-90 p-lr3">
                                <input type="file" name="files" class="input-100" multiple="multiple"/>
                            </td>
                           
                        </tr>
                    </table>
                    <div class="btn-grp center m-t10">
                        <button type="submit" class="btn-normal">게시글저장</button>
                        <button type="button" onclick="location.href='${pageContext.request.contextPath }/article/grp_article_list?boardCode=${boardCode }'" class="btn-cancel">게시글목록</button>
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