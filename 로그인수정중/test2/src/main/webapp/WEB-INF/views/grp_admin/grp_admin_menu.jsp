<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


			<!-- Menu -->
				<nav id="menu">
					<header class="major">
						<h2>Menu</h2>
					</header>
					<div class="tree-wrap">
						<div id="sidetreecontrol" class="">
                            <a href="#" class="tab active" id="open">전체닫기</a>
                            <a href="#" class="tab" id="close">전체열기</a>
                        </div>
                        	<div class="clearfix"></div>
					<ul id="tree">
						<li><span class="opener"><a href="${pageContext.request.contextPath }/grp_notice.html">공지사항</a></span>
							<ul>
								<li><a href="${pageContext.request.contextPath }/grp_notice_list.html">공지사항 목록</a></li>


							</ul>
						</li>
						<li><span class="opener"><a href="">조직도</a></span>
							<ul>
								<li><a href="${pageContext.request.contextPath }/grp_employee_list.html">사원목록</a></li>
								<li><a href="${pageContext.request.contextPath }/grp_trainee_list.html">연습생목록</a></li>
							</ul>
						</li>
						<li><span class="opener"><a href="">자유게시판</a></span>
							<ul>
								<li><a href="${pageContext.request.contextPath }/grp_freeBoard_list.html">자유게시판 목록</a></li>

							</ul>
						</li>
						<li>
							<span class="opener"><a href="">부서게시판</a></span>
							<ul>
								<li><a href="${pageContext.request.contextPath }/grp_teamBoard_list.html">부서게시판 목록</a></li>


							</ul>
						</li>

						<li><span class="opener"><a href="">근태관리</a></span>
							<ul>
								<li><a href="${pageContext.request.contextPath }/grp_commute.html">출퇴근 관리</a></li>

							</ul>
						</li>
						<li>
							<span class="opener"><a href="">전자결재</a></span>
							<ul>
								<li><a href="${pageContext.request.contextPath }/grp_document.html">기안문서</a></li>
								<li><a href="${pageContext.request.contextPath }/grp_documentBox.html">개인문서함</a></li>
								<li><a href="${pageContext.request.contextPath }/grp_payment.html">결재문서함</a></li>

							</ul>
						</li>


						<li>
							<span class="opener"><a href="">일정</a></span>
							<ul>
								<li><a href="${pageContext.request.contextPath }/grp_cal_list.html">개인 일정</a></li>
								<li><a href="${pageContext.request.contextPath }/grp_date.html">회사 일정</a></li>


							</ul>
						</li>
						<li>
							<span class="opener"><a href="">시스템</a></span>
							<ul>
								<li><a href="${pageContext.request.contextPath }/system">회사정보수정</a></li>
								<li><a href="${pageContext.request.contextPath }/grp_system_board">게시판 생성</a></li>
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
