<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@include file="/WEB-INF/views/grp_org/grp_org_header.jsp"%>

<body class="is-preload">

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Main -->
		<div id="main">
			<div class="inner">

				<!-- Header -->
				<%@include file="/WEB-INF/views/grp_org/grp_org_auth.jsp"%>

				<!-- Content -->

				<header class="main" style="margin: 10px;">
					<h2>조직도</h2>
				</header>

				<div class="main">


					<div class="page-right bg-white p10">
						<div class="page-main-wrap">
							<div class="page-member-top flex flex-justify">

								<div class=""></div>
							</div>
							<div class="title">
								<h3 class="tomato font18 noto m-t20">
									조직도 > 3.조직도
								</h3>
							</div>
							<div class="page-member-bottom">
								<div class="page-content">
									<div id="chart-container"></div>

								</div>
							</div>
						</div>
					</div>

				</div>

			</div>
		</div>


		<!-- Sidebar -->
		<div id="sidebar">
			<div class="inner">


				<%@include
					file="/WEB-INF/views/grp_freeboard/grp_freeboard_menu.jsp"%>


			</div>
		</div>

	</div>



</body>

<%@include file="/WEB-INF/views/grp_org/grp_org_footer.jsp"%>


</html>