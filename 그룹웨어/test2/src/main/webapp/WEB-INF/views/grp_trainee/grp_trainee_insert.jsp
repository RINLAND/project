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
					<h4 class="m-b20">2.연습생목록 > 연습생등록</h4>
					<div class="system-main center">
						<div class="page-member-bottom"  >
							<div class="page-content " >
								<form style="padding: 10px 170px 10px  40px;" id="frm"  enctype="multipart/form-data" 
								action="${pageContext.request.contextPath}/Trainee/grp_trainee_register" method="POST">								
									<div class="member-info flex flex-justify " >
									
										<div class="member-left" >
											<div class="photo-area">
												<img src="${pageContext.request.contextPath }/images/main3.jpg" id='traPhotoImg' />
											</div>
											<div class="photo-btn center m-t5">
												<input type="file" name="file" id="traPhoto" class="input-100"/>
											</div>
										</div>
										<div class="member-right " >
											<table class="mem-table" style="font-size: 12px; " >
												<tr >
													<td class="td-7 center bg-sub weight700">이름/성별</td>
													<td class="td-13 p-lr3 flex flex-justify">
														<input type="text" name="traName" id="traName" class="input-65" autofocus autocomplete="off"  />
														<select name="traGender" class="sel-70" id="traGender">
															<option value="M">남자</option>
															<option value="Y">여자</option>
														</select>
													</td>
													<td class="td-7 center  bg-sub weight700" >생년월일</td>
													<td class="td-13 p-lr3 ">
														<input type="text" name="traBirth" id="traBirth" class="input-135" autocomplete="off" />
													   
													</td>
													<td class="td-7 center  bg-sub weight700">연락처</td>
													<td class="td-13 p-lr3 flex flex-justify">
														
														<input type="text" name="traPhon" id="traPhon" class="input-135" autocomplete="off"/>
	
													</td>
													<td class="td-7 center  bg-sub weight700">비상연락처</td>
													<td class="td-13 p-lr3 flex flex-justify">
														
														<input type="text" name="traTell" id="traTell" class="input-135" autocomplete="off"/>
	
													</td>
													<td class="td-7 center  bg-sub weight700">키/몸무게</td>
													<td class="td-13 p-lr3 flex flex-justify">
														<input type="text" name="traHight" id="traHight" class="input-70"placeholder="키" autocomplete="off"/>
													<input type="text" name="traWeight" id="traWeight" class="input-65"placeholder="몸무게" autocomplete="off"/>
													</td>
												</tr>
												<tr>
													<td class="td-7 center  bg-sub weight700">입사경로</td>
													<td class="td-13 p-lr3 ">
														<select name="traHire" class="sel-135" id="traHire">
															<option value="공개오디션">공개오디션</option>
															<option value="수시오디션">수시오디션</option>
															<option value="특별오디션">특별오디션</option>
															<option value="캐스팅">캐스팅</option>
														</select>
													</td>
													<td class="td-7 center  bg-sub weight700">입사일</td>
													<td class="td-13 p-lr3 ">
													 <input type="date" max="2021-12-31" Min="1980-01-01" name="traHireDate" id="traHireDate" class="input-135"  />

													</td>
													<td class="td-7 center bg-sub weight700">담당자</td>
													<td class="td-13 p-lr3 ">
														<input type="text" name="traManager" id="traManager" class="input-135" autocomplete="off" />
													</td>
													
													<td class="td-7 center  bg-sub weight700">특이사항</td>
													<td class="td-13 p-lr3 flex flex-justify">
														<input type="text" name="traUnique" id="traUnique" class="input-70"
															placeholder="구분" autocomplete="off"/>
														<input type="text" name="traUniqueDetail" id="traUniqueDetail" class="input-65"
															placeholder="사항" autocomplete="off"/>
													</td>
													<td class="td-7 center bg-sub weight700">병역구분</td>
													<td class="td-13 p-lr3 ">
														<select name="traMilitary" class="sel-135" id="traMilitary">
															<option value="Y">병역필</option>
															<option value="N">미필</option>
															<option value="O">면제</option>
															<option value="X">해당없음</option>
														</select>
													</td>
													
												</tr>
												<tr>
													<td class="td-7 center bg-sub weight700">구분</td>
													<td class="td-13 p-lr3 ">
														<select name="traStructue" class="sel-135" id="traStructue">
															<option value="팀">팀</option>
															<option value="솔로">솔로</option>
															<option value="미정">미정</option>
														</select>
													</td>
													<td class="td-7 center bg-sub weight700">취미</td>
													<td class="td-13 p-lr3">
														<input type="text" name="traHobby" id="traHobby" class="input-135" autocomplete="off"/>
													</td>
													<td class="td-7 center bg-sub weight700">특기</td>
													<td class="td-13 p-lr3 ">
														<input type="text" name="traSpeciality" id="traSpeciality" class="input-135" autocomplete="off"/>
													</td>
													<td class="td-7 center bg-sub weight700">보훈대상여부</td>
													<td class="td-13 p-lr3">
														<select name="traRewarding" class="sel-135" id="traRewarding">
															<option value="N">무</option>
															<option value="Y">유</option>
														</select>
													</td>
													<td class="td-7 center bg-sub weight700">최종학력</td>
													<td class="td-13 p-lr3">
														<select name="traLevel" class="sel-135" id="traLevel">
															<option value="1">대학교졸업</option>
															<option value="2">고등학교졸업</option>
															<option value="3">중학교졸업</option>
															<option value="4">초등학교졸업</option>
														</select>
													</td>
												</tr>
												<tr>
													<td class="td-7 center  bg-sub weight700">최종학교명</td>
													<td class="td-13 p-lr3 ">														
														<input type="text" name="traSchool " id="traSchool" class="input-135" autocomplete="off"/>
													
													</td>
													<td class="td-7 center  bg-sub weight700">전공</td>
													<td class="td-13 p-lr3">
														<input type="text" name=" traMajor " id=" traMajor" class="input-135" autocomplete="off"/>
													</td>
													<td class="td-7 center bg-sub weight700">이메일</td>
													<td class="td-13 p-lr3 ">
														<input type="text" name="traMail" id="traMail" class="input-135" autocomplete="off"/>
													</td>
													<td class="td-7 center bg-sub weight700">주소</td>
													<td class="td-13 p-lr3">
														<input type="text" name="traAddr" id="traAddr" class="input-135" autocomplete="off"/>
													</td>
													<td class="td-7 center  bg-sub weight700">거주지</td>
													<td class="td-13 p-lr3 ">
														<input type="text" name="traHome" id="traHome" class="input-135" autocomplete="off"/>
													
													</td>
												</tr>
												<tr>
													
													<td class="td-7 center  bg-sub weight700">보유자격1</td>
													<td class="td-13 p-lr3 flex flex-justify">
														<input  maxlength="20" type="text" name="traLicense1" id="traLicense1" class="input-135" />
													</td>
													<td class="td-7 center  bg-sub weight700">보유자격2</td>
													<td class="td-13 p-lr3 flex flex-justify">
														<input  maxlength="20" type="text" name="traLicense2" id="traLicense2" class="input-135" />
													</td>
													<td class="td-7 center  bg-sub weight700">보유자격3</td>
													<td class="td-13 p-lr3 flex flex-justify">
														<input  maxlength="20" type="text" name="traLicense3" id="traLicense3" class="input-135" />
													</td>
													<td class="td-7 center bg-sub weight700">어학사항1</td>
													<td class="td-13 p-lr3 flex flex-justify">
														<input type="text" name="traLang1" id="traLang1" class="input-135" autocomplete="off"/>
														
													</td>
													<td class="td-7 center bg-sub weight700">어학사항2</td>
													<td class="td-13 p-lr3 flex flex-justify">
														<input type="text" name="traLang2" id="traLang2" class="input-135" autocomplete="off"/>
														
													</td>
												</tr>
												<tr>
													<td class="td-7 center bg-sub weight700">어학사항3</td>
													<td class="td-13 p-lr3">
														<input type="text" name="traLang3" id="traLang3" class="input-135" autocomplete="off"/>
													</td>
													<td class="td-7 center bg-sub weight700">상벌사항1</td>
													<td class="td-13 p-lr3">
														<input type="text" name="traAward1" id="traAward1" class="input-135" autocomplete="off"/>
													</td>
													<td class="td-7 center bg-sub weight700">상벌사항2</td>
													<td class="td-13 p-lr3">
														<input type="text" name="traAward2" id="traAward2" class="input-135"autocomplete="off" />
													</td>
													<td class="td-7 center bg-sub weight700">상벌사항3</td>
													<td class="td-13 p-lr3">
														<input type="text" name="traAward3" id="traAward3" class="input-135"autocomplete="off" />
													</td>
													<td class="td-7 center bg-sub weight700">상벌사항4</td>
													<td class="td-13 p-lr3">
														<input type="text" name="traAward4" id="traAward4" class="input-135"autocomplete="off" />
													</td>
												</tr>
											</table>
										</div>
									</div>
									<div class="comment">
										<div class="title">
											<h3 class=" font14 noto m-t20">
												추가사항 입력
											</h3>
										</div>
										<div class="content">
											<textarea id="traComment" name="traComment"
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
			$('#traPhotoImg').attr('src', e.target.result);
		} 
		reader.readAsDataURL(input.files[0]);
	}
}

	$(function() {
		$("#traPhoto").change(function(){ 
			readURL(this); 
		});  
	});
</script>


</html>