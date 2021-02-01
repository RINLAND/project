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
					<%@include file = "/WEB-INF/views/grp_admin/grp_admin_auth.jsp" %>

					<!-- Content -->
				
					<header class="main" style="margin: 10px;">
						<h2>공지사항</h2>
					</header>

					<div class="main">
						<div class="main-top">
							<div class="search-wrap flex flex-justify  m-b5 bg-white">
								<div class="">
									<span class="btn-count">전체게시물 수 ${count } 개</span>
								</div>
								<button type="button" class="btn-on" onclick="location.href='${pageContext.request.contextPath }/notice/write'">글작성</button>
							</div>
							

						</div>
						 <div class="title">
                		<h3 class="tomato font18 noto m-t10">
                    		공지사항
                		</h3>
            		</div>	
						<div class="board-list">
							<table>
								<tr class="center white f6 weight700 font14 fontwhite" style="background-color:#6200EA" >
									<td class="td-5">
                                        <input type="checkbox" onClick="chkAll();"/>
                                    </td>
									<td class="td-5">번호</td>
									<td class="td-40">게시글 제목</td>
									<td class="td-10">작성자</td>
									<td class="td-8">게시일</td>
									<td class="td-5">조회</td>
									<td class="td-10">관리</td>
								</tr>
				<c:forEach var="listview" items="${listview}" varStatus="status">	
				<c:url var="link" value="board2Read">
					<c:param name="brdno" value="${listview.brdno}" />
				</c:url>	
						<tr class="center font14">
						<td>
                            <input type="checkbox"  name="chk" class="chk" data-uid="${artList.aid}" data-code="${boardCode}" />
                        </td>
									<td>
						<c:out value="${pageVO.totRow-((pageVO.page-1)*pageVO.displayRowCount + status.index)}"/>					
					</td>
					<td><a href="${link}"><c:out value="${listview.brdtitle}"/></a></td>
					<td><c:out value="${listview.brdwriter}"/></td>
					<td><c:out value="${listview.brddate}"/></td>
					<td><c:out value="${listview.brdhit}"/></td>
									
									<td>
										<!-- input이면 type=submit -->
			
										<button type="button" class="s-btn-on" onclick="location.href='modify?brdno=<c:out value="${listview.brdno}"/>'">수정</button>
										<button type="button" class="s-btn-off" onclick="location.href='delete?brdno=<c:out value="${listview.brdno}"/>'">삭제</button>
									</td>
								</tr>
							</c:forEach>
							</table>
						</div>
						<c:if test="${pageVO.totPage>1}">
		<div class="paging center">
			<c:forEach var="i" begin="${pageVO.pageStart}" end="${pageVO.pageEnd}" step="1">
				<c:url var="pageLink" value="List">
					<c:param name="page" value="${i}" />
				</c:url>						
	            <c:choose>
	                <c:when test="${i eq pageVO.page}">
	                	<c:out value="${i}"/>
	                </c:when>
	                <c:otherwise>
	                	<a href="${pageLink}"><c:out value="${i}"/></a>
	                </c:otherwise>
	            </c:choose>
	        </c:forEach>
		</div>
		<br/>
	</c:if>		  
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