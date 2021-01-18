<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file = "/WEB-INF/views/grp_cal/grp_cal_header.jsp" %>


<body class="is-preload">

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Main -->
		<div id="main">
			<div class="inner">

				<!-- Header -->
				<%@include file = "/WEB-INF/views/grp_cal/grp_cal_auth.jsp" %>
				
				<!-- Content -->

				<header class="main" style="margin: 10px;">
					<h2>개인 일정</h2>
				</header>
				<div class="main-top">
					<h4 class="m-b20">
						<i class="far fa-calendar-check"></i>일정 > 일정등록</h4>
				</div>
				<div class="calendar-insert">
					<form>
						<table>
							<tr>
								<td class="td-10 noto under bg-gray weight700 center">시작일자</td>
								<td class="flex flex-justify">
									<input type="text" autocomplete="off" id="startDate" class="input-150" />
									<i class="far fa-calendar-alt"></i>
								</td>
								<td class="td-10 noto under bg-gray weight700 center">종료일자</td>
								<td class="flex flex-justify">
									<input type="text" autocomplete="off" id="endDate" class="input-150" />
									<i class="far fa-calendar-alt"></i>								
								</td>
								<td class="td-10 noto under bg-gray weight700 center">일정내용</td>
								<td class="flex flex-justify">
									<input type="text" autocomplete="off" class="input-100" />
								</td>
							</tr>
						</table>
						<div class="btn-grp center m-t15">
							<button type="button" class="noto cbtn-on">일정등록</button>
							<button type="reset" class="noto cbtn-off">등록취소</button>
						</div>
					</form>
				</div>
				<div class="main-top">
					<h4 class="m-b20"><i class="far fa-calendar-check"></i>일정 > 일정목록</h4>
					<div id='calendar'></div>

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
<script>

	document.addEventListener('DOMContentLoaded', function () {
		var calendarEl = document.getElementById('calendar');

		var calendar = new FullCalendar.Calendar(calendarEl, {
			headerToolbar: {
				left: 'prev,next today',
				center: 'title',
				right: 'dayGridMonth,timeGridWeek,timeGridDay,listMonth'
			},
			initialDate: '2020-11-01',
			navLinks: true, // can click day/week names to navigate views
			businessHours: true, // display business hours
			editable: true,
			selectable: true,
			events: [
				{
					title: '점심미팅',
					start: '2020-11-11T13:00:00',
					constraint: 'businessHours',
					color: '#673AB7'
				},
				{
					title: '부서회의',
					start: '2020-11-15T11:00:00',
					constraint: 'availableForMeeting', // defined below
					color: '#673AB7'
				},
				{
					title: '세미나',
					start: '2020-11-18',
					end: '2020-11-20',
					color: '#B39DDB'
				},
				{
					title: 'Nyang 2집 앨범 발매',
					start: '2020-11-30',
					color: '#B71C1C'
				},



				// red areas where no events can be dropped
				{
					start: '2020-11-24',
					end: '2020-11-28',
					overlap: false,
					display: 'background',
					color: '#D1C4E9'
				},
				{
					start: '2020-09-06',
					end: '2020-09-08',
					overlap: false,
					display: 'background',
					color: '#ff9f89'
				}
			]
		});

		calendar.render();
	});

</script>

<!-- calendar event -->
<script>
    $(function () {
        $("#startDate, #endDate").datepicker({
            dateFormat: 'yy-mm-dd'
        });
    });
</script>

</html>