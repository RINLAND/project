<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@include file = "/WEB-INF/views/grp_org/grp_org_header.jsp" %>


<body class="is-preload">

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Main -->
		<div id="main">
			<div class="inner">

				<!-- Header -->
					<%@include file = "/WEB-INF/views/grp_admin/grp_admin_auth.jsp" %>

				<!-- Content -->
				
					<header class="main" style="margin: 10px;">
						<h2>조직도</h2>
					</header>
					<h4 class="m-b20">1.사원목록 > 상세등록</h4>
					<div class="system-main center">
						<div class="page-member-bottom"  >
							<div class="page-content " >
								<form style="padding: 10px 170px 10px  40px;" id="frm"  enctype="multipart/form-data" 
								action="${pageContext.request.contextPath}/Organization/grp_emp_others" method="POST">								
									<div class="member-info flex flex-justify " >
									
										<div class="member-left" >
											<div class="photo-area">
												<img src="${pageContext.request.contextPath }/images/main3.jpg" id='empPhotoImg' />
											</div>
											<div class="photo-btn center m-t5">
												<input type="file" name="file" id="empPhoto" class="input-100"/>
											</div>
										</div>
										<div class="member-right " >
											<table class="mem-table" style="font-size: 12px; " >
												<tr >
													<td class="td-7 center bg-sub weight700">사원명/성별</td>
													<td class="td-13 p-lr3 flex flex-justify">
														<input type="text" name="empName" id="empName" class="input-65" autofocus autocomplete="off" value="${empOne.empName }" />
														<select name="empGender" class="sel-70" id="empGender">
															<option value="M">남자</option>
															<option value="Y">여자</option>
														</select>
													</td>
													<td class="td-7 center  bg-sub weight700" >생년월일</td>
													<td class="td-13 p-lr3 ">
														<input type="text" name="empBirth" id="empBirth" class="input-135" autocomplete="off" />
													   
													</td>
													<td class="td-7 center  bg-sub weight700">연락처</td>
													<td class="td-13 p-lr3 flex flex-justify">
														
														<input type="text" name="empCP" id="empCP" class="input-135" autocomplete="off"/>
	
													</td>
													<td class="td-7 center  bg-sub weight700">비상연락처</td>
													<td class="td-13 p-lr3 flex flex-justify">
														
														<input type="text" name="empIn" id="empIn" class="input-135" autocomplete="off"/>
	
													</td>
													<td class="td-7 center  bg-sub weight700">내선번호</td>
													<td class="td-13 p-lr3 flex flex-justify">
														
														<input type="text" name="empTel" id="empTel" class="input-135" autocomplete="off"/>
													</td>
												</tr>
												<tr>
													<td class="td-7 center  bg-sub weight700">채용형태</td>
													<td class="td-13 p-lr3 ">
														<select name="empRecruit" class="sel-135" id="empRecruit">
															<option value="1">공개채용</option>
															<option value="2">수시채용</option>
															<option value="3">특별채용</option>
														</select>
													</td>
													<td class="td-7 center  bg-sub weight700">부서</td>
													<td class="td-13 p-lr3 ">
														<select name="empTeamCode" class="sel-135" id="empTeamCode">
															
														</select>
													</td>
													<td class="td-7 center bg-sub weight700">직급</td>
													<td class="td-13 p-lr3 ">
														<select name="empGradeCode" class="sel-135" id="empGradeCode">
															
														</select>
													</td>
	
	
													<td class="td-7 center  bg-sub weight700">특이사항</td>
													<td class="td-13 p-lr3 flex flex-justify">
														<input type="text" name="empUnique" id="empUnique" class="input-70"
															placeholder="구분" autocomplete="off"/>
														<input type="text" name="empUniqueDetail" id="empUniqueDetail" class="input-65"
															placeholder="사항" autocomplete="off"/>
													</td>
													<td class="td-7 center bg-sub weight700">병역구분</td>
													<td class="td-13 p-lr3 ">
														<select name="empMilitary" class="sel-135" id="empMilitary">
															<option value="Y">병역필</option>
															<option value="N">미필</option>
															<option value="O">면제</option>
															<option value="X">해당없음</option>
														</select>
													</td>
													
												</tr>
												<tr>
													<td class="td-7 center bg-sub weight700">승인여부</td>
													<td class="td-13 p-lr3 ">
														<select name="empConfirm" class="sel-135" id="empConfirm">
															<option value="N" >거절</option>
															<option value="Y">승인</option>
														</select>
													</td>
													<td class="td-7 center bg-sub weight700">취미/특기</td>
													<td class="td-13 p-lr3">
														<input type="text" name="empHobby" id="empHobby" class="input-135" autocomplete="off"/>
													</td>
													<td class="td-7 center bg-sub weight700">장애여부</td>
													<td class="td-13 p-lr3 ">
														<select name="empDisability" class="sel-135" id="empDisability">
															<option value="N">무</option>
															<option value="Y">유</option>
														</select>
													</td>
													<td class="td-7 center bg-sub weight700">보훈대상여부</td>
													<td class="td-13 p-lr3">
														<select name="empReward" class="sel-135" id="empReward">
															<option value="N">무</option>
															<option value="Y">유</option>
														</select>
													</td>
													<td class="td-7 center bg-sub weight700">결혼여부</td>
													<td class="td-13 p-lr3">
														<select name="empMarried" class="sel-135" id="empMarried">
															<option value="Y">유</option>
															<option value="N">무</option>
														</select>
													</td>
												</tr>
												<tr>
													<td class="td-7 center  bg-sub weight700">최종학력</td>
													<td class="td-13 p-lr3 ">
														<select name="empLevel" class="sel-135" id="empLevel">
															<option value="1">박사취득</option>
															<option value="2">대학원졸업</option>
															<option value="3">대학교졸업</option>
															<option value="4">대학교졸업예정</option>
															<option value="5">고등학교졸업</option>
														</select>
													</td>
													<td class="td-7 center  bg-sub weight700">최종학교명</td>
													<td class="td-13 p-lr3">
														<input type="text" name="empSchool " id="empSchool" class="input-135" autocomplete="off"/>
													</td>
													<td class="td-7 center bg-sub weight700">전공</td>
													<td class="td-13 p-lr3 ">
														<input type="text" name="empMajor" id="empMajor" class="input-135" autocomplete="off"/>
													</td>
													<td class="td-7 center bg-sub weight700">이메일</td>
													<td class="td-13 p-lr3">
														<input type="text" name="empEmail" id="empEmail" class="input-135" autocomplete="off"/>
													</td>
													<td class="td-7 center  bg-sub weight700">권한</td>
													<td class="td-13 p-lr3 ">
														
														<select class="sel-135" name="empAuth" id="empAuth" style="width: 75px">
															<option value="1" >협력업체</option>
															<option value="2" >사원</option>
															<option value="3">부서장</option>
															<option value="4" >임원</option>
															<option value="10" >관리자</option>
														</select>
													</td>
												</tr>
												<tr>
													
													<td class="td-7 center  bg-sub weight700">보유자격1</td>
													<td class="td-13 p-lr3 flex flex-justify">
														<input  maxlength="20" type="text" name="empLicense1" id="empLicense1" class="input-135" />
													</td>
													<td class="td-7 center  bg-sub weight700">보유자격2</td>
													<td class="td-13 p-lr3 flex flex-justify">
														<input  maxlength="20" type="text" name="empLicense2" id="empLicense2" class="input-135" />
													</td>
													<td class="td-7 center  bg-sub weight700">상벌사항</td>
													<td class="td-13 p-lr3 flex flex-justify">
														<input  maxlength="20" type="text" name="empAward1" id="empAward1" class="input-135" />
													</td>
													<td class="td-7 center bg-sub weight700">어학사항1</td>
													<td class="td-13 p-lr3 flex flex-justify">
														<input type="text" name="empLanguge1" id="empLang1" class="input-135" autocomplete="off"/>
														
													</td>
													<td class="td-7 center bg-sub weight700">어학사항2</td>
													<td class="td-13 p-lr3 flex flex-justify">
														<input type="text" name="empLanguge2" id="empLang2" class="input-135" autocomplete="off"/>
														
													</td>
												</tr>
												<tr>
													<td class="td-7 center  bg-sub weight700">주소</td>
													<td class="td-13 p-lr3 " colspan="3">
														
														<select name="empAddress" class="sel-135" id="empAddress">
															<option value="02">서울특별시</option>
															<option value="032">인천광역시</option>
															<option value="042">대전광역시</option>
															<option value="053">대구광역시</option>
															<option value="052">울산광역시</option>
															<option value="051">부산광역시</option>
															<option value="062">광주광역시</option>
															<option value="044">세종특별자치시</option>
															<option value="031">경기도</option>
															<option value="033">강원도</option>
															<option value="041">충청남도</option>
															<option value="043">충청북도</option>
															<option value="054">경상북도</option>
															<option value="055">경상남도</option>
															<option value="063">전라북도</option>
															<option value="061">전라남도</option>
															<option value="064">제주특별자치도</option>
	
														</select>
													</td>
													
													<td class="td-7 center bg-sub weight700">비밀번호</td>
													<td class="td-13 p-lr3">
														<input type="text" name="empPwd" id="empPwd" class="input-135"autocomplete="off" />
													</td>
													<td class="td-7 center bg-sub weight700">입사연월일</td>
													<td class="td-13 p-lr3">
                                                        <input type="date" max="2021-12-31" Min="1980-01-01" name="empEnter" id="empEnter" class="input-135"  />
													</td>
													<td class="td-7 center bg-sub weight700">사번</td>
													<td class="td-13 p-lr3">
                                                        <input type="text" name="empNum" id="empNum" class="input-135" />
													</td>
												</tr>
											</table>
										</div>
									</div>
									<div class="comment">
										<div class="title">
											<h3 class="tomato font14 noto m-t20">
												추가사항 입력
											</h3>
										</div>
										<div class="content">
											<textarea id="empComment" name="empComment"
												style=" border: 1px solid #cccccc;padding: 10px; border-radius: 2px;"
												class="noto"></textarea>
											<script>
												CKEDITOR.replace('editor');
												CKEDITOR.config.height = 150;
											</script>
										</div>
									</div>
									<div class="btn-grp center m-t10 ">
										<button type="submit" class="btn-on" >내용저장</button>
										<button type="reset" class="btn-off">새로고침</button>
									</div>
								</form>
	
							</div>
						</div>
	
	
					</div>
					<div class="clearfix"></div>
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
function readURL(input) { 
	if (input.files && input.files[0]) { 
		var reader = new FileReader(); 
		reader.onload = function (e) { 
			$('#empPhotoImg').attr('src', e.target.result);
		} 
		reader.readAsDataURL(input.files[0]);
	}
}

	$(function() {
		$("#empPhoto").change(function(){ 
			readURL(this); 
		});  
	});
</script>
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
						$("#empTeamCode").append("<option value="+value.team_id+">"+value.team_name+"</option>");
					});
			},
			error : function(){
				alert("시스템에러");
				},			
				complete : function(){}
	});
}

	function loadGrade(){
		$.ajax({
			url : "${pageContext.request.contextPath }/grp_get_grade",
			type : "post",
			data : "",
			contentType : "application/x-www-form-urlencoded; charset=utf-8",
			dataType : "json",
			success : function(resData){
				$.each(resData, function(key, value) {
						$("#empGradeCode").append("<option value="+value.grade_id+">"+value.grade_name+"</option>");
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
		loadGrade();
		});

</script>

</html>