<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


			<!-- Menu -->
				<nav id="menu">
					<header class="major">
						<h2>Menu</h2>
					</header>
					<div class="tree-wrap">
                        	<div class="clearfix"></div>
					<ul id="tree">
						<li><span class="opener"><a href="">공지사항</a></span>
							<ul>
								<li><a href="${pageContext.request.contextPath }/notice/grp_article_list">공지사항 목록</a></li>


							</ul>
						</li>
						<li><span class="opener"><a href="">조직도</a></span>
							<ul>
								<li><a href="${pageContext.request.contextPath }/Organization/grp_orgchart">조직도</a></li>
								<li><a href="${pageContext.request.contextPath }/Organization">사원목록</a></li>
								<li><a href="${pageContext.request.contextPath }/Organization">연습생목록</a></li>
							</ul>
						</li>
						<li><span class="opener"><a href="">자유게시판</a></span>
							<ul>
								<li><a href="${pageContext.request.contextPath }/freeboard">자유게시판 목록</a></li>

							</ul>
						</li>
						<li>
							<span class="opener"><a href="">부서게시판</a></span>
							<ul>
								<li><a href="${pageContext.request.contextPath }/board">부서게시판 목록</a></li>


							</ul>
						</li>

						<li><span class="opener"><a href="">근태관리</a></span>
							<ul>
								<li><a href="${pageContext.request.contextPath }/commute">출퇴근 관리</a></li>

							</ul>
						</li>
					


						<li>
							<span class="opener"><a href="">일정</a></span>
							<ul>
								<li><a href="${pageContext.request.contextPath }/grp_cal">개인 일정</a></li>
								<li><a href="${pageContext.request.contextPath }/grp_cal/grp_comcal">회사 일정</a></li>


							</ul>
						</li>
						<li>
							<span class="opener"><a href="">시스템</a></span>
							<ul>
								<li><a href="${pageContext.request.contextPath }/system">회사정보수정</a></li>
							</ul>
						</li>
					</ul>
				</div>
				</nav>

				<!-- Section -->
				<section>
					<header class="major">
						<h2>CONTACT</h2>
					</header>
					<p></p>
					<ul class="contact">
						<li class="icon solid fa-envelope"><a href="#">Entertainment@untitled.tld</a></li>
						<li class="icon solid fa-phone">(02) 354-4678</li>
						<li class="icon solid fa-home">서울 강남구 삼성로 648<br />
						</li>
					</ul>
				</section>

				<!-- Footer -->
				<footer id="footer">
					<p class="copyright">&copy; Untitled. All rights reserved. Demo Images: <a
							href="${pageContext.request.contextPath }/https://unsplash.com">Unsplash</a>. Design: <a href="${pageContext.request.contextPath }/https://html5up.net">HTML5
							UP</a>.</p>
				</footer>
