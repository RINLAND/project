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
					<%@include file = "/WEB-INF/views/grp_teamboard/grp_teamboard_auth.jsp" %>

				<!-- Content -->
				
					<header class="main" style="margin: 10px;">
						<h2>조직도</h2>
					</header>
					<h4 class="m-b20">조직도 > 1.사원목록</h4>
					<div class="system-main center">
						<div class="page-member-bottom"  >
							<div class="page-content " >
								<form style="padding: 10px 170px 10px  40px;" id="frm"  enctype="multipart/form-data" 
								action="${pageContext.request.contextPath}/Organization/grp_employee_register" method="POST">								
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
															<option value="">남자</option>
															<option value="">여자</option>
														</select>
													</td>
													<td class="td-7 center  bg-sub weight700" >생년월일</td>
													<td class="td-13 p-lr3 ">
														<input type="text" name="empBirth" id="empBirth" class="input-135" autocomplete="off" />
													   
													</td>
													<td class="td-7 center  bg-sub weight700">연락처</td>
													<td class="td-13 p-lr3 flex flex-justify">
														<select name="" class="sel-80" id="">
															<option value="">010</option>
															<option value="">070</option>
														</select>
														<input type="text" name="empCP" id="empCP" class="input-70" autocomplete="off"/>
	
													</td>
													<td class="td-7 center  bg-sub weight700">비상연락처</td>
													<td class="td-13 p-lr3 flex flex-justify">
														<select name="" class="sel-80" id="">
															<option value="">010</option>
															<option value="">070</option>
															<option value="">02</option>
														</select>
														<input type="text" name="empIn" id="empIn" class="input-70" autocomplete="off"/>
	
													</td>
													<td class="td-7 center  bg-sub weight700">내선번호</td>
													<td class="td-13 p-lr3 flex flex-justify">
														<select name="" class="sel-80" id="">
															<option value="">001</option>
															<option value="">002</option>
															<option value="">003</option>
															<option value="">004</option>
															<option value="">005</option>
															<option value="">006</option>
															<option value="">007</option>
														</select>
														<input type="text" name="empTel" id="empTel" class="input-70" autocomplete="off"/>
													</td>
												</tr>
												<tr>
													<td class="td-7 center  bg-sub weight700">채용형태</td>
													<td class="td-13 p-lr3 ">
														<select name="empRecruit" class="sel-135" id="empRecruit">
															<option value="">공개채용</option>
															<option value="">수시채용</option>
															<option value="">특별채용</option>
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
															<option value="">병역필</option>
															<option value="">미필</option>
															<option value="">면제</option>
															<option value="">해당없음</option>
														</select>
													</td>
													
												</tr>
												<tr>
													<td class="td-7 center bg-sub weight700">권한등급</td>
													<td class="td-13 p-lr3 ">
														<select name="empAuth" class="sel-135" id="empAuth">
															<option value="">8</option>
															<option value="">7</option>
															<option value="">6</option>
															<option value="">5</option>
															<option value="">4</option>
															<option value="">3</option>
															<option value="">2</option> 
															<option value="">1</option>
														</select>
													</td>
													<td class="td-7 center bg-sub weight700">취미/특기</td>
													<td class="td-13 p-lr3">
														<input type="text" name="empHobby" id="empHobby" class="input-135" autocomplete="off"/>
													</td>
													<td class="td-7 center bg-sub weight700">장애여부</td>
													<td class="td-13 p-lr3 ">
														<select name="empDisability" class="sel-135" id="empDisability">
															<option value="">무</option>
															<option value="">유</option>
														</select>
													</td>
													<td class="td-7 center bg-sub weight700">보훈대상여부</td>
													<td class="td-13 p-lr3">
														<select name="empReward" class="sel-135" id="empReward">
															<option value="">무</option>
															<option value="">유</option>
														</select>
													</td>
													<td class="td-7 center bg-sub weight700">결혼여부</td>
													<td class="td-13 p-lr3">
														<select name="empMarried" class="sel-135" id="empMarried">
															<option value="">유</option>
															<option value="">무</option>
														</select>
													</td>
												</tr>
												<tr>
													<td class="td-7 center  bg-sub weight700">최종학력</td>
													<td class="td-13 p-lr3 ">
														<select name="empLevel" class="sel-135" id="empLevel">
															<option value="">박사취득</option>
															<option value="">대학원졸업</option>
															<option value="">대학교졸업</option>
															<option value="">대학교졸업예정</option>
															<option value="">고등학교졸업</option>
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
													<td class="td-7 center  bg-sub weight700">주소</td>
													<td class="td-13 p-lr3 ">
														
														<select name="empAddress" class="sel-135" id="empAddress">
															<option value="">서울특별시</option>
															<option value="">인천광역시</option>
															<option value="">대전광역시</option>
															<option value="">대구광역시</option>
															<option value="">울산광역시</option>
															<option value="">부산광역시</option>
															<option value="">광주광역시</option>
															<option value="">세종특별자치시</option>
															<option value="">경기도</option>
															<option value="">강원도</option>
															<option value="">충청남도</option>
															<option value="">충청북도</option>
															<option value="">경상북도</option>
															<option value="">경상남도</option>
															<option value="">전라북도</option>
															<option value="">전라남도</option>
															<option value="">제주특별자치도</option>
	
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
													<td class="td-7 center  bg-sub weight700">보유자격3</td>
													<td class="td-13 p-lr3 flex flex-justify">
														<input  maxlength="20" type="text" name="empLicense3" id="empLicense3" class="input-135" />
													</td>
													<td class="td-7 center bg-sub weight700">어학사항1</td>
													<td class="td-13 p-lr3 flex flex-justify">
														<input type="text" name="empLanguge1" id="empLang1" class="input-75" autocomplete="off"/>
														<select name="" class="sel-60" id="">
															<option value="">상</option>
															<option value="">중</option>
															<option value="">하</option>
														</select>
													</td>
													<td class="td-7 center bg-sub weight700">어학사항2</td>
													<td class="td-13 p-lr3 flex flex-justify">
														<input type="text" name="empLanguge2" id="empLang2" class="input-75" autocomplete="off"/>
														<select name="" class="sel-60" id="">
															<option value="">상</option>
															<option value="">중</option>
															<option value="">하</option>
														</select>
													</td>
												</tr>
												<tr>
													<td class="td-7 center bg-sub weight700">상벌사항1</td>
													<td class="td-13 p-lr3">
														<input type="text" name="empAward1" id="empAward1" class="input-135" autocomplete="off"/>
													</td>
													<td class="td-7 center bg-sub weight700">상벌사항2</td>
													<td class="td-13 p-lr3">
														<input type="text" name="empAward2" id="empAward2" class="input-135" autocomplete="off"/>
													</td>
													<td class="td-7 center bg-sub weight700">상벌사항3</td>
													<td class="td-13 p-lr3">
														<input type="text" name="empAward3" id="empAward3" class="input-135"autocomplete="off" />
													</td>
													<td class="td-7 center bg-sub weight700">입사연월일</td>
													<td class="td-13 p-lr3">
                                                        <input type="date" max="2021-12-31" Min="1980-01-01" name="empEnter" id="empEnter" class="input-135" value="${empOne.empEnter }" />
													</td>
													<td class="td-7 center bg-sub weight700">사번</td>
													<td class="td-13 p-lr3">
                                                        <input type="text" name="empNum" id="empNum" class="input-135" value="${empOne.empNum }" readonly/>
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
												class="noto">
	
										</textarea>
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
										<input type="hidden" name="empNum"
										value="${sessionScope.empNum}" />
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