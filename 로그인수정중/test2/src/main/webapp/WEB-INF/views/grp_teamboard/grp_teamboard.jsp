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

					<div class="main">
						<div class="main-top">
							<h4 class="m-b20">부서게시판 > 부서게시판목록</h4>
							
<!------------------------------------------------ 게시판생성--------------------------------------- -->
							<div class="board-wrap bg-white">
					<form method="POST" id="frm">
						<table>
							<tr>
								<td class="td-10 center weight700  bg-sub">게시판 이름</td>
								<td class="td-15 p-lr3">
									<input type="text" name="boardName" id="boardName" class="input-100" maxlength="100"
										required />
								</td>
								<td class="td-10 center weight700  bg-sub"> 게시판 코드</td>
								<td class="td-15 p-lr3">
									<input type="text" placeholder="영어로만 입력하세요." onBlur="chkBoardCode();" name="boardCord" id="boardCord"
										class="input-30" maxlength="100" required />
								</td>
								<td class="td-10 center weight700  bg-sub"> 게시판 종류</td>
								<td class="td-15 p-lr3">
									<select class="center sel-100" name="grpPost" id="grpPost">
										
									</select>
								</td>
								<td class="td-10 center weight700 bg-gray">게시판 부서</td>
								<td class="td-15 p-lr3">
									<input type="text" placeholder="어떤 부서의 게시판인지 입력하세요." name="boardTeam"
										id="boardTeam" class="input-100" maxlength="100" required />
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
								<td class="td-10 p-lr3" colspan="3">
									<input type="text" placeholder="어떤 게시판인지 설명하는 말을 입력하세요." name="boardDetail"
										id="boardDetail" class="input-100" maxlength="100" required />
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
							<button type="submit" class="btn-on" id="btn">생성완료</button>
							<button type="reset" class="btn-off">새로고침</button>
						</div>
					</form>
					</div>
							
<!------------------------------------------------ 게시판생성 끝--------------------------------------- -->
							
							<div class="search-wrap flex flex-justify  m-b5 bg-white">
								<div class="">
									<span class="btn-count">전체게시판 수  ${count }개</span>
								</div>
								<div class="flex flex-justify"  >
									<form method="post " class="" action="${pageContext.request.contextPath }/board">
										
										<select class="" >
											<option value="boardCode">게시판코드</option>
											<option value="boardTitle">게시판제목</option>
											<option value="boardTeam">게시판그룹</option>
										</select>
									<input value="${words }" type="text" name="words" required style="margin-left: -2px" />
									<button type="submit" class="btn-on" style="margin-left: -2px">검색</button>

									</form>
								</div>
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
		url : "${pageContext.request.contextPath }/grp_get_post",
		type : "post",
		data : "",
		contentType : "application/x-www-form-urlencoded; charset=utf-8",
		dataType : "json",
		success : function(resData){
			$.each(resData, function(key, value) {
					$("#grpPost").append("<option value="+value.post_id+">"+value.post_name+"</option>");
				});
			},
		error : function(){
			alert("시스템에러");
		},			
			
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
			alert("시스템에러");
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
					alert("시스템 에러");
			},
				complete : function(){}
		});
			
	});
});
</script>


<!--게시물 코드 중복안되게  -->
<script>
function chkBoardCode(){
	
	var formData = {
		boardCode : $("#boardCode").val()
	};

	$.ajax({
		url : "${pageContext.request.contextPath }/board/grp_teamboard_check",
		type : "post",
		data : formData,
		success : function(resData){
			if(resData == 'failure'){
				alert("사용할 수 없는 코드입니다.");
				$("#boardCode").val("");
				$("#boardCode").focus();
			}
		},
		error : function(){
			alert("시스템 에러");
	},
		complete : function(){}
});
		
}
</script>

</html>