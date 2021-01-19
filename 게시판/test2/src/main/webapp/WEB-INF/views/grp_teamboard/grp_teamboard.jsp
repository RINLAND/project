<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	 <%@include file = "/WEB-INF/views/grp_teamboard/grp_teamboard_header.jsp" %>
	
<body class="is-preload">

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Main -->
		<div id="main">
			<div class="inner">

				<!-- Header -->
					<%@include file = "/WEB-INF/views/grp_teamboard/grp_teamboard_auth.jsp" %>

				<!-- Content -->
				
					<header class="main" style="margin: 10px;">
						<h2>부서게시판</h2>
					</header>

					<div class="main ">
						<div class="main-top ">
							<h4 class="m-b20">부서게시판 > 부서게시판목록</h4>
							
<!------------------------------------------------ 게시판생성--------------------------------------- -->
				<div class="board-wrap bg-white ">
					<form method="POST" id="frm">
						<table>
							<tr>
								<td class="td-10 center weight700  bg-sub">게시판 이름</td>
								<td class="td-15 p-lr3">
									<input type="text" name="boardTitle" id="boardTitle" class="input-100" maxlength="100"
										required />
								</td>
								<td class="td-10 center weight700  bg-sub"> 게시판 코드</td>
								<td class="td-15 p-lr3">
									<input type="text" placeholder="영어로만 입력하세요." name="boardCode" id="boardCode"
										class="input-30" maxlength="100" required />
								</td>
								<td class="td-10 center weight700  bg-sub"> 게시판 종류</td>
								<td class="td-15 p-lr3">
									<select class="center sel-100" name="boardType" id="boardType">
										
									</select>
								</td>
								<td class="td-10 center weight700 bg-gray">게시판 부서</td>
								<td class="p-lr3">
									<select name="boardTeam" id="boardTeam" class="center sel-100">
									
									</select>
									
								</td>
							</tr>
							<tr>

								<td class="td-10 center weight700  bg-sub font14">게시판 열람가능 등급</td>
								<td class="p-lr3">
									<select name="boardRead" id="boardRead" class="center sel-100">
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>

									</select>
								</td>
								<td class="td-10 center weight700  bg-sub font14">게시판 글 작성가능 등급</td>
								<td class="p-lr3">
									<select name="boardWrite" id="boardWrite" class="center sel-100">
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
									</select>
								</td>
								<td class="td-10 center weight700 bg-gray font14">자료다운로드가능 등급</td>
								<td class="p-lr3">
									<select name="boardDown" id="boardDown" class="center sel-100">
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
									</select>
								</td>
								<td class="td-10 center weight700 bg-gray font14">댓글 작성가능 등급</td>
								<td class="p-lr3">
									<select name="boardReply" id="boardReply" class="center sel-100">
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
									</select>
								</td>
							</tr>
							<tr>
								<td class="td-10 center weight700 bg-gray">게시판 색상</td>
								<td class="p-lr3">
									<select class="center sel-100" name="boardColor" id="boardColor">
										<option value="red">Red / #C62828</option>
										<option value="blue">Blue / #283593</option>
										<option value="skyblue">Sky Blue / #1565C0 </option>
										<option value="yellow">Yellow / #F9A825</option>
										<option value="Orange">Orange / #EF6C00</option>
										<option value="green">Green / #2E7D32</option>
										<option value="purple">Purple / #4527A0</option>
									</select>
								</td>

								<td class="td-10 center weight700 bg-gray">게시판 설명</td>
								<td class="td-10 p-lr3" >
									<input type="text" name="boardDetail"
										id="boardDetail" class="input-100" maxlength="100" required />
								</td>
								<td class="bg-gray weight700 td-10">게시판 관리자</td>
                                    <td class="td-15 p-lr3">
                                    <input type="text" class="input-100" value="${sessionScope.empName }" name="boardMaker" readonly />
                               </td>


								<td class="td-10 center weight700 bg-gray">자료실 여부</td>
								<td>
									<select name="boardReference" id="boardReference" class="center sel-100">
										<option value="yes">Y</option>
										<option value="no">N</option>
									</select>
								</td>

							</tr>

						</table>
						
						<div class="btn-grp center m-t5">
							<button type="button" class="btn-on" id="btn">생성완료</button>
							<button type="reset" class="btn-off">새로고침</button>
						</div>
					</form>
					</div>
						<div class="  m-b5 bg-white">
<!------------------------------------------------ 게시판생성 끝--------------------------------------- -->
							
							<div class="search-wrap flex flex-justify  m-b5 bg-white">
								<div class="">
									<span class="btn-count">전체게시판 수  ${count }개</span>
								</div>
								<div class="flex flex-justify"  >
									<form method="post " class="flex flex-justify " action="${pageContext.request.contextPath }/board">
										
										<select class="" >
											<option value="boardCode">게시판코드</option>
											<option value="boardTitle">게시판제목</option>
											<option value="boardTeam">게시판그룹</option>
											<option value="boardType">게시판타입</option>
										</select>
									<input value="${words }" type="text" name="words" required style="margin-left: -2px" />
									<button type="submit" class="btn-on" style="margin-left: -2px">검색</button>

									</form>
								</div>
							</div>
							
<!------------------------------------------------ 게시판생성 목록--------------------------------------- -->
 					<div class="board-list">
                            <table>
                                <tr class="center under tr-color f6 weight700 font14" id="rowColor">
                                    <td class="td-5">
                                        <input type="checkbox" onClick="chkAll();"/>
                                    </td>
                                    <td class="td-10">게시판그룹</td>
                                    <td class="td-10">게시판코드</td>
                                    <td class="td-10">게시판색상</td>
                                    <td>게시판제목</td>
                                    <td class="td-5">읽기권한</td>
                                    <td class="td-5">쓰기권한</td>
                                    <td class="td-5">댓글권한</td>
                                    <td class="td-5">다운권한</td>
                                    <td class="td-5">자료실</td>
                                    <td class="td-10">관리</td>
                                   
                                </tr>
                                <c:forEach items="${list }" var="board">
                                <tr class="center font14 weight700">
                                    <td>
                                    <!-- data-uid : 가져오려는 값의 ID -->
                                        <input type="checkbox"  name="chk" class="chk" data-uid="${board.boardCode }"/>
                                    </td>
                                    <td>${board.team_name}</td>
                                    <td>
                                        <a href="${pageContext.request.contextPath }/article/grp_article_list?boardCode=${board.boardCode }" 
                                        target="_blank" class="under">
                                        ${board.boardCode}</a></td>
                                    <td>${board.boardColor}</td>
                                    <td>
                                        <a href="${pageContext.request.contextPath }/article/grp_article_list?boardCode=${board.boardCode }" 
                                        target="_blank" class="under">
                                         ${board.boardTitle }</a></td>
                                    <td>${board.boardRead }</td>
                                    <td>${board.boardWrite }</td>
                                    <td>${board.boardReply }</td>
                                    <td>${board.boardDown }</td>
                                  	<td>${board.boardReference }</td>
                                    <td>
                                        <button class="s-btn-on" onClick="boardModify('${board.boardCode}');">수정</button>
                                        <button class="s-btn-off" onClick="boardDel('${board.boardCode}');">삭제</button>
                                    </td>
                                </tr>
                                </c:forEach>
                                
                            </table>
                            
  <!-------------------------------페이징 ui 시작------------------------------------------------------>
								<c:if test = "${count > 0 }">
									<div class="page-grp center m-t10">
									<!--맨앞으로  -->
									<c:choose>
										<c:when test="${curPage > 1 }">
											<span class="page ">
											<a href="${pageContext.request.contextPath }/board?curPage=1&searchOpt=${searchOpt}&words=${words}">
											<i class="fas fa-angle-double-left"></i></a>
											</span> 
										</c:when>
										<c:otherwise>
											<span class="page "><i class="fas fa-angle-double-left"></i></span> 
										</c:otherwise>
									</c:choose>
									<!--한칸 앞으로  -->
									<c:choose>
										<c:when test="${curPage > 1 }">
											
											<a href="${pageContext.request.contextPath }/board?curPage=${curPage-1 }&searchOpt=${searchOpt}&words=${words}">
											<span class="page "><i class="fas fa-angle-left"></i></a>
											</span> 
										</c:when>
										<c:otherwise>
											<span class="page "><i class="fas fa-angle-left"></i></span> 
										</c:otherwise>
									</c:choose>
										
									<!--페이지 번호 출력  -->
									<c:forEach begin="${blockBegin }" end="${blockEnd }" var="num"> <!--시작, 끝, 변수명  -->
										<c:if test="${selected == num }">
											<span class="page page-active"><a href="#" class="f6">${num }</a></span> 
										</c:if>
										<c:if test="${selected != num }">
											<a href="${pageContext.request.contextPath }/board?curPage=${num }&searchOpt=${searchOpt}&words=${words}">
												<span class="page">${num }</a></span> 
										</c:if>
									</c:forEach>
<!-----------------------------페이지 번호 출력 끝 --------------------------------------------------------------->
<!--------------------------------------한칸 뒤로-------------------------------------------------------------->
									<c:choose>
										<c:when test="${curPage != totalPage }">
											
											<a href="${pageContext.request.contextPath }/board?curPage=${curPage+1 }&searchOpt=${searchOpt}&words=${words}">
											<span class="page "><i class="fas fa-angle-right"></i></a>
											</span> 
										</c:when>
										<c:otherwise>
											<span class="page "><i class="fas fa-angle-right"></i></span> 
										</c:otherwise>
									</c:choose>
									
									<!--맨 뒤로  -->
										<c:choose>
										<c:when test="${curPage != totalPage }">
											
											<a href="${pageContext.request.contextPath }/board?curPage=${totalPage}&searchOpt=${searchOpt}&words=${words}">
											<span class="page "><i class="fas fa-angle-double-right"></i></a>
											</span> 
										</c:when>
										<c:otherwise>
											<span class="page "><i class="fas fa-angle-double-right"></i></span> 
										</c:otherwise>
									</c:choose>
										
									</div>
								</c:if>
								<!--페이징 ui 끝  -->
                            
                        </div>
<!------------------------------------------------ 게시판생성 목록 끝--------------------------------------- -->

						</div>	
					</div>
					
				</div>
			</div>
		</div>

		<!-- Sidebar -->
		<div id="sidebar">
			<div class="inner">

			<%@include file="/WEB-INF/views/grp_freeboard/grp_freeboard_menu.jsp"%>
				

			</div>
		</div>

	</div>


</body>

<script>
function loadPost(){
	$.ajax({
		url : "${pageContext.request.contextPath }/board/grp_get_post",
		type : "post",
		data : "",
		contentType : "application/x-www-form-urlencoded; charset=utf-8",
		dataType : "json",
		success : function(resData){
			$.each(resData, function(key, value) {
					$("#boardType").append("<option value="+value.post_id+">"+value.post_name+"</option>");
				});
			},
		error : function(){
			alert("타입시스템에러");
		},			
		complete : function(){}	
	});
}

$(function(){
	loadPost();
	
	});
</script>

<!--영어만 가능한 정규식(정규표현식) -->
<script>
	$(function(){
		$("#boardCode").keyup(function(){   //키보드 입력 이벤트
		$(this).val($(this).val().replace(/[0-9]|[^\!-z]/gi,""));
	}); 
});
		
</script>

<!--게시판 그룹  -->
<script>
function loadTeam(){
	$.ajax({
		url : "${pageContext.request.contextPath }/grp_get_team",
		type : "post",
		data : "",
		contentType : "application/x-www-form-urlencoded; charset=utf-8",
		dataType : "json",
		success : function(resData){
			$.each(resData, function(key, value) {
					$("#boardTeam").append("<option value="+value.team_id+">"+value.team_name+"</option>");
				});
		},
		error : function(){
			alert("부서 시스템에러");
			},			
			complete : function(){}
	});
}

$(function(){
	loadTeam();
	});


</script>


<!--게시판 색상 -js : onChange()/ jquery : change()  -->
<script>
$(function(){
	$("#boardColor").change(function(){
		$("#rowColor").css({
				backgroundColor : this.value
			});
		});
	});
</script>


<!--게시물 저장하기  -->
<script>
	$(function(){
		$("#btn").click(function(){
			//alert($("#frm").serialize());
			
			var a = $("#boardCode").val();
			var b = $("#boardTitle").val();

			if( a == ""){
					alert("게시판 코드(영문)를 입력하세요.");
					$("#boardCode").focus();
					return false;
				}

			if( b == ""){
				alert("게시판 제목을 입력하세요.");
				$("#boardTitle").focus();
				return false;
			}
			
			$.ajax({
				url : "${pageContext.request.contextPath }/board/grp_teamboard_insert",
				type : "post",
				data : $("#frm").serialize(),
				success : function(resData){
					alert(a + "게시판&댓글게시판이 생성되었습니다.");
					window.location.reload();
				},
				error : function(){
					alert("저장 시스템 에러");
			},
				complete : function(){}
		});
			
	});
});
</script>


<!--게시판 삭제  -->
<script>
	function boardDel(boardCode){
		//alert(boardCode);

		var msg = "삭제 후 복구는 불가능합니다. \n선택하신 게시판&댓글을 삭제하시겠습니까?";
		if(confirm(msg)){  //확인 클릭

			var formData = {
					boardCode : boardCode  //ctr 변수 : 파라미터 키
				};
			
			$.ajax({
				url : "${pageContext.request.contextPath }/board/grp_teamboard_delete",
				type : "post",
				data : formData,
				success : function(resData){
					if(resData == "success"){
						alert("삭제되었습니다.");
						window.location.reload();
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
	function boardModify(boardCode){
		var msg = "수정하신 내용을 저장하시겠습니까?";
		if(confirm(msg)){  //확인 클릭

			var formData = {
					boardCode : boardCode  //ctr 변수 : 파라미터 키
				};
			
			$.ajax({
				url : "${pageContext.request.contextPath }/board/grp_teamboard_modify",
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