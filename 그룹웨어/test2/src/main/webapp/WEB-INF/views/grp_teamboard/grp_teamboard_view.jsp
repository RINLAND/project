<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
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
        <div class="container p10 bg-white">
            <div class="board-insert">
               
               
                     <div class="title">
                    <h3 class="font18 noto">
                        ${article.subject }
                    </h3>
                </div>
                    <table>
           				
                        <tr>
                            <td class="td-10 center weight700 noto under bg-gray" style="background-color: ${boardColor}">게시글 분류</td>
                            <td class="td-40 p-lr3">
                                <c:if test="${article.division eq 'Y' }">
                        			<span class="notice">공지사항</span>
	                        	</c:if>
	                        	<c:if test="${article.division eq 'N' }">
	                        		일반
	                        	</c:if>
                            </td>
                            <td class="td-10 center weight700 noto under bg-gray" style="background-color: ${boardColor}">게시글 비밀번호</td>
                            <td class="td-40 p-lr3">
                                비밀글
                            </td>
                        </tr>
                        <tr>
                            <td  class="td-10 center weight700 noto under bg-gray" style="background-color: ${boardColor}">게시글 제목</td>
                            <td colspan="3"  class="td-90 p-lr3">
                                <strong>${article.subject }</strong>
                            </td>
                            
                        </tr>
                        <tr>
                            <td  class="td-10 center weight700 noto under bg-gray" style="background-color: ${boardColor}">작성자</td>
                            <td colspan="3"  class="td-90 p-lr3">
                               <strong>${article.writer }</strong>
                            </td>
                            
                        </tr>
                        <tr>
                            <td  class="td-10 center weight700 noto under bg-gray" style="background-color: ${boardColor}">내용</td>
                            <td colspan="3"  class="td-90 p-lr3" style="border: 2px; padding-bottom:2px ; height: 300px">
                               ${article.content }
                            </td>
                            
                        </tr>
                        <tr>
                            <td  class="td-10 center weight700 noto under bg-gray" style="background-color: ${boardColor}">첨부파일</td>
                            <td colspan="3"  class="td-90 p-lr3 " >
                               <c:if test="${article.fileOriName eq '' }">
                               	<strong>첨부파일이 없습니다.</strong>
                               </c:if>
                               
                               <c:if test="${article.fileOriName ne '' }">
                               	<a href="${pageContext.request.contextPath }/article/grp_article_download?boardCode=${boardCode}&=${view.aid}"><strong>${view.fileOriName }</strong></a>
                               </c:if>
                            </td>
                           
                        </tr>
                        <tr>
                            <td  class="td-10 center weight700 noto under bg-gray" style="background-color: ${boardColor}">조회수</td>
                            <td colspan="3"  class="td-90 p-lr3">
                               ${article.hit }회
                            </td>
                           
                        </tr>
                     
                    </table>
                    <div class="btn-grp center m-t10 flex flex-justify">
                        <div class="btn-left">
                        <button type="button" onclick="location.href='${pageContext.request.contextPath }/article/grp_article_list?boardCode=${boardCode }'" class="btn-red">게시글목록</button>

                        </div>
                        <div class="btn-right">                           
                            <button type="button" class="btn-on" onClick="location.href='${pageContext.request.contextPath}/article/grp_article_modify?boardCode=${boardCode}&aid=${article.aid}'">게시글수정</button>
                            <button type="button" class="btn-off" onClick="articleDel('${boardCode}', ${article.aid});" class="s-btn-off"class="s-btn-off" >게시글삭제</button>
                        </div>

                        
                    </div>
                
            </div>
        </div>
    </div>
     <!-- 댓글화면구성 -->
            <hr style="margin: 30px 0; border:1px solid #eeeeee;" />
            <div class="p-lr20">
                <!-- ajax 저장된 댓글 목록을 표시 -->
                <div id="commentList"></div> 
                <hr style="margin: 30px 0; border:1px solid #f7f7f7;" />
                <div style="margin-top: 20px;">
                    <!-- ajax로 자료 전체 전송하기(input->name을 사용) 위한 id -->
                    <form id="frm"> 
                    <input type="hidden" id="boardCode" name="boardCode" value="${boardCode}" />
                     <input type="hidden" name="aid" value="${article.aid}" />
                        <input type="hidden" name="who" value="${sessionScope.empName }" readonly/>
                        <textarea id="comment" name="comment" style="border:1px solid #e7e7e7; width:100%; height: 100px;" 
                        class="p10 noto font16" placeholder="댓글 내용을 입력하세요"></textarea>
                        <!-- 비밀댓글 & 댓글 저장 버튼 -->
                        <div class="flex flex-justify p10">
                        	<div class="">
                                <input type="checkbox" name="" /> 
                                	비밀댓글</div>
                        	<div class="">
                        		<button id="btn" style="padding:15px 20px; background-color:#3f51b5; color:#fff; border-radius:3px" class="noto font16 weight700 class="s-btn-on"" type="button">댓글등록
                        		</button>
                        	</div>
                        </div>
                    </form>
                </div>
            </div>
          <!-- 댓글화면구성 -->
</body>
<script>
    $(function () {
        $("tr:nth-child(2n+1)").addClass("tr-even");
    });
</script>

<!--게시글 삭제  -->
<script>
	function articleDel(boardCode, aid){
		//alert(aid);
		//alert(boardCode);

		var msg = "삭제 후 복구는 불가능합니다. \n선택하신 게시글을 삭제하시겠습니까?";
		if(confirm(msg)){  //확인 클릭

			var formData = {
					boardCode : boardCode,
					aid : aid  //ctr 변수 : 파라미터 키
				};
			
			$.ajax({
				url : "${pageContext.request.contextPath }/article/grp_article_delete",
				type : "post",
				data : formData,
				success : function(resData){
					if(resData == "success"){
						alert("삭제되었습니다.");
						location.href="${pageContext.request.contextPath }/article/grp_article_list?boardCode=${boardCode }";
					}
				},
				error : function(){
					alert("삭제 시스템 에러");
			},
				complete : function(){}
		});
	}
}
</script>

<script>
    function checkComment(){ 
        
        if($("#comment").val()==''){
            alert("댓글을 입력하세요.");
            $("#comment").focus();
            return false;  
        }
       var formData = $("#frm").serialize(); 

       $.ajax({
           url : "${pageContext.request.contextPath}/comment/grp_comment_register",
           type : "POST",
           data : formData,
           success : function(resData){
            alert("댓글이 등록되었습니다.");
            listComment();
            $("#comment").val('');  //값을 지우는 거 .val()은 값을 가져오는 거
           },
           error : function(){
            alert("관리자에게 문의하세요.");
           },

           complete : function(){

           }
       });
    }

	function listComment(){
		 var formData = $("#frm").serialize();
		$.ajax({
	           url : "${pageContext.request.contextPath}/comment/grp_comment_list",
	           type : "POST",
	           data : formData, 
	           success : function(resData){ 
		           
		           var a = '';
		           $.each(resData.list, function(key, value){ 
		        	   a += '<div>';
		        	    a += ' <div class="flex" style="margin: 10px 0;">';
		        	     a += ' <div style="width: 6%"> ';
		        	      a += ' <span style="width: 70px; height: 70px; border-radius: 50%; background-color: #ffffff; display: inline-block; line-height: 70px; text-align: center;">';
                                a += ' <i class="far fa-user f6 font20" ></i>';
                               a += ' </span> ';
                          a += ' </div>';
                               a += ' <div style="width: 94%;">';
                                a += ' <div class="noto font16 weight700" style="color: #555;">';
                                 a += ' <span>'+value.who+'</span>';
                                 a += ' <span style="margin-left: 20px;">';
                                   a += ' <i class="far fa-calendar-alt"></i>'+value.regdate+'</span>';
                               a += '</div>';
                              a += ' <div id="" class="viewComment'+value.cid+'"noto font20" style="margin-top: 5px; color: #666666;">';
                               a += '   <span>'+value.comment+'</span>';
                          a += ' </div>';
                        a += '  </div>';
                       a += '  </div>';
                       <!-- 댓글 수정/삭제 버튼 -->
                       a += ' <div style="text-align:right;">';
                        a += '  <button class="s-btn-on" onClick="changeComment('+value.cid+', \''+value.comment+'\')">수정</button> ';
                       a += '   <button class="s-btn-off" onClick="deleteComment('+value.cid+')">삭제</button>';
                       a += '  </div>';
						a += '<hr style="margin: 20px 0; border:1px solid #f7f7f7;"/>';
                       
                    a += ' </div> ';
			           });

		           var b ='';
		           b+='<h2>댓글 : '+resData.count+'</h2>';

		           $("#commentList").html(b+a);  //위에서 작업한 변수a 내용을 id commentList에 표시
	           },
	           error : function(){
	            alert("listComment 오류.");
	           },

	           complete : function(){

	           }
	       });	
		}

	function deleteComment(cid){
		//alert(cid);
		var msg = "선택하신 댓글을 삭제하시겠습니까?";
		if(confirm(msg) ){ //confirm은 boolean 타입

			var formData = {
						cid : cid,
						boardCode : $("#boardCode").val() //input hidden으로 숨겨져 있는 boardCode값
					}
			$.ajax({
		           url : "${pageContext.request.contextPath}/comment/grp_comment_delete",
		           type : "POST",
		           data : formData,
		           success : function(resData){
		            alert("댓글이 삭제되었습니다.");
		            listComment();
		           },
		           error : function(){
		            alert("삭제 관리자에게 문의하세요.");
		           },

		           complete : function(){

		           }
		       });
			}
	}

	function changeComment(cid, comment){
		//alert(cid);
		//alert(comment);	
		var a = '';
		
		a += "<div>";
        	a += '   <textarea name="comment_'+cid+'" class="noto p10 font20" style="border : 1px solid #e7e7e7; width:100%; height:100px;">'+comment+'</textarea>';
        a += "</div>";

        a += "<div style='margin-top: 5px;'>";
        	a+= "<button type='button' class='btn-red f6' style='padding: 7px 10px;' onClick='modifyComment("+cid+")'>변경</button>";
        a += "</div>";

            $(".viewComment" + cid).html(a);
	}

	function modifyComment(cid){
		//alert(cid);
		var comment = $('[name = comment_'+cid+']').val();
		//alert(cid);
		//alert(comment);
		
		var formData = {
						cid : cid,
						boardCode : $("#boardCode").val(),
						comment : comment
					}

		$.ajax({
	           url : "${pageContext.request.contextPath}/comment/grp_comment_modify",
	           type : "POST",
	           data : formData,
	           success : function(resData){
	            alert("댓글이 수정되었습니다.");
	            listComment();
	           },
	           error : function(){
	            alert("수정 관리자에게 문의하세요.");
	           },

	           complete : function(){

	           }
	       });
		
		}

	
	
    $("#btn").click(function(){
        checkComment();
    });

    //화면이 표시될 떄 무조건 실행되는 jquery
    $(function(){
    	listComment();
        });

</script>

</html>