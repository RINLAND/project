<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<nav id="menu">
				<header class="major">
					<h2>Menu</h2>
				</header>
				<ul>
					<li><span class="opener"><a href="${pageContext.request.contextPath }/grp_notice.html">공지사항</a></span>
						<ul>
							<li><a href="${pageContext.request.contextPath }/grp_notice_list.html">공지사항 목록</a></li>
							

						</ul>
					</li>
					<li><span class="opener"><a href="${pageContext.request.contextPath }">조직도</a></span>
						<ul>
							<li><a href="${pageContext.request.contextPath }/grp_employee_list.html">사원목록</a></li>
							<li><a href="${pageContext.request.contextPath }/grp_trainee_list.html">연습생목록</a></li>
						</ul>
					</li>
					<li><span class="opener"><a href="${pageContext.request.contextPath }">자유게시판</a></span>
						<ul>
							<li><a href="${pageContext.request.contextPath }/grp_freeBoard_list.html">자유게시판 목록</a></li>
							
						</ul>
					</li>
					<li>
						<span class="opener"><a href="${pageContext.request.contextPath }">부서게시판</a></span>
						<ul>
							<li><a href="${pageContext.request.contextPath }/grp_teamBoard_list.html">부서게시판 목록</a></li>
							

						</ul>
					</li>
					
					<li><span class="opener"><a href="${pageContext.request.contextPath }">근태관리</a></span>
						<ul>
							<li><a href="${pageContext.request.contextPath }/grp_commute.html">출퇴근 관리</a></li>

						</ul>
					</li>
					
					
					<li>
						<span class="opener"><a href="${pageContext.request.contextPath }">일정</a></span>
						<ul>
							<li><a href="${pageContext.request.contextPath }/grp_cal_list.html">개인 일정</a></li>
							<li><a href="${pageContext.request.contextPath }/grp_date.html">회사 일정</a></li>
							

						</ul>
					</li>
					<li>
						<span class="opener"><a href="${pageContext.request.contextPath }/grp_system.html">시스템</a></span>
						<ul>
							<li><a href="${pageContext.request.contextPath }/grp_system_grp.html">회사정보수정</a></li>
							<li><a href="${pageContext.request.contextPath }/grp_system_board.html">게시판수정</a></li>
						</ul>
					</li>
				</ul>
			</nav>
			
			<!-- Section -->
				<section>
					<header class="major">
						<h2>Get in touch</h2>
					</header>
					<p>Sed varius enim lorem ullamcorper dolore aliquam aenean ornare velit lacus, ac varius enim lorem
						ullamcorper dolore. Proin sed aliquam facilisis ante interdum. Sed nulla amet lorem feugiat
						tempus aliquam.</p>
					<ul class="contact">
						<li class="icon solid fa-envelope"><a href="#">information@untitled.tld</a></li>
						<li class="icon solid fa-phone">(000) 000-0000</li>
						<li class="icon solid fa-home">1234 Somewhere Road #8254<br />
							Nashville, TN 00000-0000</li>
					</ul>
				</section>

				<!-- Footer -->
				<footer id="footer">
					<p class="copyright">&copy; Untitled. All rights reserved. Demo Images: <a
							href="${pageContext.request.contextPath }https://unsplash.com">Unsplash</a>. Design: <a href="${pageContext.request.contextPath }https://html5up.net">HTML5
							UP</a>.</p>
				</footer>
