<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <%@include file = "/WEB-INF/views/grp_employee/grp_employee_header.jsp" %>

<body class="is-preload">

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Main -->
		<div id="main">
			<div class="inner">

				<!-- Header -->
				<%@include file = "/WEB-INF/views/grp_freeboard/grp_freeboard_auth.jsp" %>

				<!-- Content -->
				
					<header class="main" style="margin: 10px;">
						<h2>조직도</h2>
					</header>

					<div class="main">
						<div class="main-top">
							<h4 class="m-b20">조직도 > 1.사원목록</h4>
							<div class="search-wrap flex flex-justify  m-b5 bg-white">
								<div class="">
									<span class="font14 weight700 noto">
									전체 직원수 : ${count }명 ( ${curPage } page of ${totalPage} pages )
								</span>
								</div>
								<div class="flex flex-justify"  >
									<form method="post"  class="flex flex-justify" action="${pageContext.request.contextPath }/employee/grp_employee_list">
						
										<select class="" name="searchOpt">
											<option value="emp_name" <c:if test="${searchOpt eq 'emp_name' }">selected</c:if>>직원명</option>
											<option value="emp_num" <c:if test="${searchOpt eq 'emp_num' }">selected</c:if>>사원번호</option>
											<option value="all" <c:if test="${searchOpt eq 'all' }">selected</c:if>>전체검색</option>
										</select>
										<input value="${words}" type="text" name="words" required style="margin-left: -2px" />
										<button type="submit" class="cbtn-off" style="margin-left: -2px">검색</button>
										<button type="button" class="cbtn-on" onClick="location.href='${pageContext.request.contextPath }/employee/grp_employee_register'">등록</button>
										
									</form>
								</div>
							</div>
							

						</div>

						<div class="board-wrap bg-white">
							<table style="table-layout: fixed;">
								<tr class="weight700 center tr-color f6 font14 ">
									<td class="td-3">
										<input type="checkbox" onclick="chkAll();" id="chkAll" />
									</td>
									<td class="td-5">번호</td>
									<td class="td-5 ">팀</td>
									<td class="td-5">직급</td>
									<td class="td-10 ">직원번호</td>
									<td class="td-10">입사일</td>
									<td >이름</td>
									<td class="td-10">비밀번호</td>
									<td class="td-5">권한</td>
									<td class="td-5">승인</td>
									<td class="td-10">비고</td>
								</tr>
								<c:if test="${count == 0 }">	
									<tr>
										<td colspan="15" class="center font14 weight700">등록된 직원이 없습니다.</td>
									</tr>
								</c:if>
								
								<c:forEach items="${list }" var="emp" varStatus="status">
								
								<tr class="center font14">
									<td>
										<input type="checkbox" name="chk" class="chk" data-uid="${emp.empID }"/>
									</td>
									<td>${ (count - status.index) - ( (curPage -1) * end )}</td>
									<td>${emp.empTeamCode }</td>
									<td >${emp.empGradeCode }</td>
									<td> 
										<a href="#"><u><strong> ${emp.empNum }</strong></u></a>
									</td>
									<td>${emp.empRegdate }</td>
									<td>
										<a href="#"><u><strong>${emp.empName }</strong></u></a>
									</td>
									<td>${emp.empPwd }</td>
									<td>
										<select name="" onchange="authChange(this.value, '${emp.empID }')" id="" style="width: 75px">
												<option value="1" <c:if test="${emp.empAuth eq 1 }">selected</c:if> >협력업체</option>
												<option value="2" <c:if test="${emp.empAuth eq 2 }">selected</c:if> >사원</option>
												<option value="3" <c:if test="${emp.empAuth eq 3 }">selected</c:if> >부서장</option>
												<option value="4" <c:if test="${emp.empAuth eq 4 }">selected</c:if> >임원</option>
												<option value="10" <c:if test="${emp.empAuth eq 10 }">selected</c:if> >관리자</option>
											</select>
									</td>
									<td>
										<select name="" onchange="confirmChange(this.value, '${emp.empID }');" id="" style="width: 75px">
												<option value="N" <c:if test="${emp.empConfirm eq 'N' }">selected</c:if>  >거절</option>
												<option value="Y"  <c:if test="${emp.empConfirm eq 'Y' }">selected</c:if>  >승인</option>
										</select>
									</td>
									<td>
											<button class="s-btn-on">수정</button>
											<button onclick="deleteOne('${emp.empID }');" class="s-btn-off">삭제</button>
									</td>
								</tr>
							</c:forEach>
							</table>
	<!----------------------------------페이징 ui 시작--------------------------------------------------------->
								<c:if test = "${count > 0 }">
									<div class="page-grp center m-t10">
									<!--맨앞으로  -->
									<c:choose>
										<c:when test="${curPage > 1 }">
											<span class="page ">
											<a href="${pageContext.request.contextPath }/employee/grp_employee_list?curPage=1&searchOpt=${searchOpt}&words=${words}">
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
											
											<a href="${pageContext.request.contextPath }/employee/grp_employee_list?curPage=${curPage-1 }&searchOpt=${searchOpt}&words=${words}">
											<span class="page "><i class="fas fa-angle-left"></i></a>
											</span> 
										</c:when>
										<c:otherwise>
											<span class="page "><i class="fas fa-angle-left"></i></span> 
										</c:otherwise>
									</c:choose>
										
					<!----------------페이지 번호 출력---------------->
									<c:forEach begin="${blockBegin }" end="${blockEnd }" var="num"> <!--시작, 끝, 변수명  -->
										<c:if test="${selected == num }">
											<span class="page page-active"><a href="#" class="f6">${num }</a></span> 
										</c:if>
										<c:if test="${selected != num }">
											<a href="${pageContext.request.contextPath }/employee/grp_employee_list?curPage=${num }&searchOpt=${searchOpt}&words=${words}">
												<span class="page">${num }</a></span> 
										</c:if>
									</c:forEach>
					<!-------------------페이지 번호 출력 끝----------->
									
					<!---------------한칸 뒤로------------------------>
									<c:choose>
										<c:when test="${curPage != totalPage }">
											
											<a href="${pageContext.request.contextPath }/employee/grp_employee_list?curPage=${curPage+1 }&searchOpt=${searchOpt}&words=${words}">
											<span class="page "><i class="fas fa-angle-right"></i></a>
											</span> 
										</c:when>
										<c:otherwise>
											<span class="page "><i class="fas fa-angle-right"></i></span> 
										</c:otherwise>
									</c:choose>
									
					<!---------------맨 뒤로------------------------------>
										<c:choose>
										<c:when test="${curPage != totalPage }">
											
											<a href="${pageContext.request.contextPath }/employee/grp_employee_list?curPage=${totalPage}&searchOpt=${searchOpt}&words=${words}">
											<span class="page "><i class="fas fa-angle-double-right"></i></a>
											</span> 
										</c:when>
										<c:otherwise>
											<span class="page "><i class="fas fa-angle-double-right"></i></span> 
										</c:otherwise>
									</c:choose>
										
									</div>
								</c:if>
<!-----------------------------페이징 ui 끝-------------------------------------------------------->
							</div>
						<div class="clearfix"></div>
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

</html>