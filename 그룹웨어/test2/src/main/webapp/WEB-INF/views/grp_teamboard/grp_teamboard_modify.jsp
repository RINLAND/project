<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


	 <%@include file="/WEB-INF/views/grp_freeboard/article_header.jsp"%>
	

<body>
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
						<h2>게시판수정</h2>
					</header>

					<div class="main ">
						<div class="main-top ">
							<h4 class="m-b20">${sessionScope.boardTilte }</h4>
							
<!------------------------------------------------ 게시판생성--------------------------------------- -->
				<div class="board-wrap bg-white ">
					<form method="POST" id="frm" action="${pageContext.request.contextPath }/grp_teamboard_modify">
						<table>
							<tr>
								<td class="td-10 center weight700  bg-sub">게시판 이름</td>
								<td class="td-15 p-lr3">
									<input type="text" name="boardTitle" id="boardTitle" class="input-100" maxlength="100"
										required />
								</td>
								<td class="td-10 center weight700  bg-sub"> 게시판 코드</td>
								<td class="td-15 p-lr3">
									<input type="text"  placeholder="영어로만 입력하세요." name="boardCode" id="boardCode"
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
							<tr>
                            <td  class="td-10 center weight700 noto under bg-gray">내용</td>
                            <td colspan="3"  class="td-90 p-lr3" style="border: 2px; padding-bottom:2px ;">
                                <textarea id="editor" name="" style="width: 100%; height: 300px; border: 1px solid #cccccc;padding: 10px; border-radius: 2px;" class="noto">
                                
                                </textarea>
                                <script>
                                    CKEDITOR.replace('editor');
                                    CKEDITOR.config.height=300;
                                </script>
                            </td>
                            
                        </tr>
                        <tr>
                            <td  class="td-10 center weight700 noto under bg-gray">첨부파일</td>
                            <td colspan="3"  class="td-90 p-lr3">
                                <input type="file" class="input-100" />
                            </td>
                           
                        </tr>

						</table>
						
						<div class="btn-grp center m-t5">
							<button class="s-btn-on" onClick="boardModify('${board.boardCode}');">수정</button>
                        	<button type="button" onclick="location.href='${pageContext.request.contextPath }/grp_board_list.html'" class="btn-red">목록</button>
						</div>
					</form>
					</div>
</body>
<script>
    $(function () {
        $("tr:nth-child(2n+1)").addClass("tr-even");
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
					$("#boardGrp").append("<option value="+value.team_id+">"+value.team_name+"</option>");
				});
		},
		error : function(){
			alert("시스템에러");
			},			
			complete : function(){}
	});
}

$(function(){
	loadTeam();
	});


</script>

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
					alert("시스템 에러");
			},
				complete : function(){}
		});
			
	});
});
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