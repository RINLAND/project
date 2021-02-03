<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

					<div class="main">
						<div class="main-top">
							<h4 class="m-b20">조직도 > 2.연습생목록</h4>
							<div class="search-wrap flex flex-justify  m-b5 bg-white">
								<div class="">
									<span class="font14 weight700 noto">
									전체 직원수 : ${count }명 ( ${curPage } page of ${totalPage} pages )
								</span>
								</div>
								<div class="flex flex-justify"  >
									<form method="post"  class="flex flex-justify" action="${pageContext.request.contextPath }/Trainee/grp_trainee_list">
						
										<select class="" name="searchOpt">
											<option value="trainee_name" <c:if test="${searchOpt eq 'trainee_name' }">selected</c:if>>이름</option>
											<option value="all" <c:if test="${searchOpt eq 'all' }">selected</c:if>>전체검색</option>
										</select>
										<input value="${words}" type="text" name="words" required style="margin-left: -2px" />
										<button type="submit" class="cbtn-off" style="margin-left: -2px">검색</button>
										<button type="button" class="cbtn-on" onClick="location.href='${pageContext.request.contextPath }/Trainee/grp_trainee_register'">등록</button>
										
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
									<td class="td-5 ">성별</td>
									<td class="td-5">나이</td>
									<td class="td-10 ">입사경로</td>
									<td class="td-10">입사일</td>
									<td >이름</td>
									<td class="td-10">담당자</td>
									<td class="td-5">연락처</td>
									<td class="td-5">구분</td>
									<td class="td-10">비고</td>
								</tr>
								<c:if test="${list == null }">	
									<tr>
										<td colspan="11" class="center font14 weight700">등록된 이름이 없습니다.</td>
									</tr>
								</c:if>
								
								<c:forEach items="${list }" var="trainee" varStatus="status">
								
								<tr class="center font14">
									<td>
										<input type="checkbox" name="chk" class="chk" data-uid="${trainee.traID }"/>
									</td>
									<td>${ (count - status.index) - ( (curPage -1) * end )}</td>
									<td>${trainee.traGender }</td>
									<td >${trainee.traBirth }</td>
									<td>${trainee.traHire }</td>
									<td>${trainee.empDate}</td>
									<td>${trainee.traHireDate }</td>
									<td>${trainee.empName }</td>
									<td>${trainee.traManager }</td>
									<td>${trainee.traPhon}</td>
									<td>${trainee.traStructue}</td>
									<td>
											<button class="s-btn-on" onClick="location.href='${pageContext.request.contextPath}/Traineen/grp_trainee_Modify?traID = ${traID }'">수정</button>
											<button onclick="deleteOne('${trainee.traID }');" class="s-btn-off">삭제</button>
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
											<a href="${pageContext.request.contextPath }/Trainee/grp_trainee_list?curPage=1&searchOpt=${searchOpt}&words=${words}">
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
											
											<a href="${pageContext.request.contextPath }/Trainee/grp_trainee_list?curPage=${curPage-1 }&searchOpt=${searchOpt}&words=${words}">
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
											<a href="${pageContext.request.contextPath }/Trainee/grp_trainee_list?curPage=${num }&searchOpt=${searchOpt}&words=${words}">
												<span class="page">${num }</a></span> 
										</c:if>
									</c:forEach>
					<!-------------------페이지 번호 출력 끝----------->
									
					<!---------------한칸 뒤로------------------------>
									<c:choose>
										<c:when test="${curPage != totalPage }">
											
											<a href="${pageContext.request.contextPath }/Trainee/grp_trainee_list?curPage=${curPage+1 }&searchOpt=${searchOpt}&words=${words}">
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
											
											<a href="${pageContext.request.contextPath }/Trainee/grp_trainee_list?curPage=${totalPage}&searchOpt=${searchOpt}&words=${words}">
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
<!--직원 삭제  -->
<script>
	function deleteOne(traID){
		//alert(empId);

		var msg = "선택하신 직원정보를 삭제하시겠습니까?";
		if(confirm(msg)){ 

			var formData = {
					traID : traID 
				};
			
			$.ajax({
				url : "${pageContext.request.contextPath }/Trainee/grp_trainee_delete",
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
</html>