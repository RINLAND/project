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
									<form method="post"  class="flex flex-justify" action="${pageContext.request.contextPath }/Organization/grp_employee_list">
						
										<select class="" name="searchOpt">
											<option value="emp_name" <c:if test="${searchOpt eq 'emp_name' }">selected</c:if>>직원명</option>
											<option value="emp_num" <c:if test="${searchOpt eq 'emp_num' }">selected</c:if>>사원번호</option>
											<option value="all" <c:if test="${searchOpt eq 'all' }">selected</c:if>>전체검색</option>
										</select>
										<input value="${words}" type="text" name="words" required style="margin-left: -2px" />
										<button type="submit" class="cbtn-off" style="margin-left: -2px">검색</button>
										<button type="button" class="cbtn-on" onClick="location.href='${pageContext.request.contextPath }/Organization/grp_emp_others'">등록</button>
										
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
								<c:if test="${list == null }">	
									<tr>
										<td colspan="15" class="center font14 weight700">등록된 직원이 없습니다.</td>
									</tr>
								</c:if>
								
								<c:forEach items="${list }" var="emp" >
								
								<tr class="center font14">
									<td>
										<input type="checkbox" name="chk" class="chk" data-uid="${emp.empId }"/>
									</td>
									<td>${ (count - status.index) - ( (curPage -1) * end )}</td>
									<td>${emp.empTeamCode }</td>
									<td >${emp.empGradeCode }</td>
									<td> 
										<a href="#"><u><strong> ${emp.empNum }</strong></u></a>
									</td>
									<td>${emp.empDate }</td>
									<td>
										<a href="#"><u><strong>${emp.empName }</strong></u></a>
									</td>
									<td>${emp.empPwd }</td>
									<td>
										<select name="" onchange="authChange(this.value, '${emp.empId }')" id="" style="width: 75px">
												<option value="1" <c:if test="${emp.empAuth eq 1 }">selected</c:if> >협력업체</option>
												<option value="2" <c:if test="${emp.empAuth eq 2 }">selected</c:if> >사원</option>
												<option value="3" <c:if test="${emp.empAuth eq 3 }">selected</c:if> >부서장</option>
												<option value="4" <c:if test="${emp.empAuth eq 4 }">selected</c:if> >임원</option>
												<option value="10" <c:if test="${emp.empAuth eq 10 }">selected</c:if> >관리자</option>
											</select>
									</td>
									<td>
										<select name="" onchange="confirmChange(this.value, '${emp.empId }');" id="" style="width: 75px">
												<option value="N" <c:if test="${emp.empConfirm eq 'N' }">selected</c:if>  >거절</option>
												<option value="Y"  <c:if test="${emp.empConfirm eq 'Y' }">selected</c:if>  >승인</option>
										</select>
									</td>
									<td>
											<button class="s-btn-on">수정</button>
											<button onclick="deleteOne('${emp.empId }');" class="s-btn-off">삭제</button>
									</td>
								</tr>
							</c:forEach>
							</table>
	
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