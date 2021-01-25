<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	 <%@include file="/WEB-INF/views/grp_freeboard/article_header.jsp"%>


<body>
    <div class="page-wrap ">
        <div class="container p20 bg-white">
            <div class="board-insert">
               
                <form id="frm" method="post" action="${pageContext.request.contextPath}/article/grp_article_modify" enctype="multipart/form-data" autocomplete="off">
                	<input type="hidden" name="aid" value="${modifyArticle.aid}" />
                     <div class="title">
                    <h3 class=" font18 m-b5">
                        <i class="fas fa-feather-alt"></i>${boardTitle }
                    </h3>
                </div>
                    <table>
                        <tr>
                            <td class="td-10 center weight700  bg-sub" style="background-color: ${boardColor}">게시글 분류</td>
                            <td class="td-40 p-lr3">${article.division}
                                <select name="division" class="sel-100">
                                    <option value="N" <c:if test="${modifyArticle.division eq 'N'}">selected</c:if> >일반게시글</option>
                                    <option value="Y" <c:if test="${modifyArticle.division eq 'Y'}">selected</c:if> >공지사항</option>
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
                                <input type="text" name="subject" value="${modifyArticle.subject}" class="input-100" maxlength="100" required/> 
                            </td>
                            
                        </tr>
                        <tr>
                            <td  class="td-10 center weight700 bg-sub" style="background-color: ${boardColor}">작성자</td>
                            <td colspan="3"  class="td-90 p-lr3">
                                <input type="text"   value="${modifyArticle.writer}" name="writer"  class="input-50" maxlength="5" required/> 
                            </td>
                            
                        </tr>
                        <tr>
                            <td  class="td-10 center weight700  bg-sub" style="background-color: ${boardColor}">내용</td>
                            <td colspan="3"  class="td-90 p-lr3" style="border: 2px; padding-bottom:2px ;">
                                <textarea id="editor" name="content" style=" border: 1px solid #cccccc;padding: 10px; border-radius: 2px;" class="noto">${modifyArticle.content}</textarea>
                                <script>
                                    CKEDITOR.replace('editor');
                                    CKEDITOR.config.height=300;
                                </script>
                            </td>
                            
                        </tr>
                        <tr>
                            <td  class="td-10 center weight700 bg-sub" style="background-color: ${boardColor}">첨부파일</td>
                            <td colspan="3"  class="td-90 p-lr3">
                                <input type="file"  name="files" class="input-100" multiple="multiple"/>
                            </td>
                           
                        </tr>
                        <c:if test="${modifyArticle.fileOriName != null}">
	                        <tr>
	                            <td colspan="3" class="td-90 p-lr3 weight700">
									<span class="kr">기존 파일 : <a href="/article/download?aid=${modifyArticle.aid}&boardCode=${boardCode}">${modifyArticle.fileOriName}</a></span>
	                            </td>
	                        </tr>
                        </c:if>
                    </table>
                    <div class="btn-grp center m-t10">
                        <button type="submit"  class="btn-normal"  onClick="articleModify('${article.aid}');">게시글수정</button>
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
<script>
	function articleModify(boardCode){
		var msg = "수정하신 내용을 저장하시겠습니까?";
		if(confirm(msg)){  //확인 클릭

			var formData = {
					aid : aid  //ctr 변수 : 파라미터 키
				};
			
			$.ajax({
				url : "${pageContext.request.contextPath }/article/grp_article_modify",
				type : "post",
				data : formData,
				success : function(resData){
					if(resData == "success"){
						alert("수정이 완료되었습니다.");
						window.location.reload();
					}
				},
				error : function(){
					alert("수정 시스템 에러");
			},
				complete : function(){}
		});
	}
}
</script>
</html>