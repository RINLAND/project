<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@include file = "/WEB-INF/views/grp_teamboard/grp_teamboard_header.jsp" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
						<h2> 부서 게시판</h2>
					</header>

					<div class="main">
						<div class="main-top">
												
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
									  <button type="button" class="btn-on"onClick="location.href='${pageContext.request.contextPath }/article/grp_article_insert?boardCode=${boardCode }'">작성</button>

									</form>
								</div>
							</div>
<!------------------------------------------------ 게시판생성 목록--------------------------------------- -->
 					 <div class="title">
                		<h3 class="tomato font18 noto m-t10">
                    		${boardTitle }
                		</h3>
            		</div>
 					<div class="board-list">
                            <table>
                                <tr class="center under tr-color f6 weight700 font14" style="background-color: ${boardColor}">
                                    <td class="td-5">
                                        <input type="checkbox" onClick="chkAll();"/>
                                    </td>
                                    <td class="td-5">번호</td>
				                        <td class="td-5 ">분류</td>
				                        <td>게시물제목</td>
				                        <td class="td-5">작성자</td>
				                        <td class="td-5">조회</td>
				                        <td class="td-8">게시일</td>
				                        <td class="td-7">관리</td>
				                </tr>
                  <c:forEach items="${list }" var="artList" varStatus="status">
                    <tr class="center font14">
                        <td>
                            <input type="checkbox" />
                        </td>
                        <td>
                        	<c:if test="${artList.division eq 'Y' }">
                        		-
                        	</c:if>
                        	<c:if test="${artList.division eq 'N' }">
                        		${ (count - status.index) - ( (curPage -1) * end )}
                        	</c:if>
                        </td>
                        <td>
                        	<c:if test="${artList.division eq 'Y' }">
                        		<span class="notice">공지사항</span>
                        	</c:if>
                        	<c:if test="${artList.division eq 'N' }">
                        		일반
                        	</c:if>
                        </td>
                        <td class="left p-lr10">
                        <c:forEach begin="1" end="${artList.re_level }">
                        	<img src="${pageContext.request.contextPath }/images/icon_reply.gif" />
                        </c:forEach>
                            <a href="${pageContext.request.contextPath }/article/grp_article_view?boardCode=${boardCode}&aid=${artList.aid}" 
                            class="under weight700">${artList.subject }
                       </a>
                         <c:set var="fileName" value="${fn:toLowerCase(artList.fileOriName) }"> </c:set> 
                         <c:forTokens var="ext" items="${fileName }" delims="." varStatus="status">
                         	<c:if test="${status.last }">
                         		<c:choose>
                         			<c:when test="${ext eq 'jpg' || ext eq 'gif' || ext eq 'png' }">
                         				img
                         			</c:when>
                         			
                         			<c:when test="${ext eq 'pdf' }">
                         				pdf아이콘
                         			</c:when>
                         			
                         			<c:when test="${ext eq 'xls' || ext eq 'xlsx' }">
                         				엑셀
                         			</c:when>
                         			
                         			<c:when test="${ext eq 'ppt' || ext eq 'pptx' }">
                         				ppt
                         			</c:when>
                         			
                         			<c:when test="${ext eq 'hwp' }">
                         				hwp
                         			</c:when>
                         			
                         		</c:choose>
                         	</c:if>
                         </c:forTokens>
                        </td>
                        <td>${artList.writer }</td>
                        <td>${artList.hit }</td>
                        <td>${artList.regdate }</td>
                        <td>
                            <!-- input이면 type=submit -->
                            <button type="button" class="s-btn-on" onclick="${pageContext.request.contextPath }/article/grp_article_modify">수정</button>
                            <button type="button" class="s-btn-off">삭제</button>
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