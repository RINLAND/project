<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="/WEB-INF/views/grp_cal/grp_cal_header.jsp"%>


<!-- datepicker(달력모양 css) -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
<!-- datepicker(달력모양 css) -->

<link href='${pageContext.request.contextPath}/calendar/core/main.css' rel='stylesheet' />
<link href='${pageContext.request.contextPath}/calendar/daygrid/main.css' rel='stylesheet' />

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
					<h2>회사 일정</h2>
				</header>
				<div class="main-top">
					<h4 class="m-b20">
						<i class="far fa-calendar-check"></i>일정 > 일정등록</h4>
				</div>
				<div class="calendar-insert center">
					<form method="POST" id="frm">
						<table>
							<tr>
								<td class="td-10 noto  bg-gray weight600 center">시작일자</td>
								<td class="flex flex-justify">
									<input type="text" autocomplete="off" id="comstartDate" name="comstartDate" class="input-150" />
									<i class="far fa-calendar-alt font16"></i>
								</td>
								<td class="td-10 noto  bg-gray weight600 center">종료일자</td>
								<td class="flex flex-justify">
									<input type="text" autocomplete="off" id="comendDate" name="comendDate" class="input-150" />
									<i class="far fa-calendar-alt font16"></i>								
								</td>
								<td class="td-10 noto  bg-gray weight600 center">일정내용</td>
								<td class="">
									<input type="text" autocomplete="off" name="comcalContent" id="comcalContent" class="input-200" />
								</td>
							</tr>
						</table>
						<div class="btn-grp center m-t15">
							<button type="submit" class="noto cbtn-on"  id="addCalBtn">일정등록</button>
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

<script src='${pageContext.request.contextPath }/calendar/core/main.js'></script>
<script src='${pageContext.request.contextPath }/calendar/core/locales/ko.js'></script>
<script src='${pageContext.request.contextPath }/calendar/interaction/main.js'></script>
<script src='${pageContext.request.contextPath }/calendar/daygrid/main.js'></script>

<script>
    $(document).ready(function () { //$(function() )
   
        $("#comstartDate, #comendDate").datepicker({
            dateFormat: 'yy-mm-dd'
        });

        getCalData();
        
    });
</script>

<script>
	function addCalendar() {
		var formData = $("#frm").serialize();
		$.ajax({
			url		: "${pageContext.request.contextPath}/grp_cal/grp_calendar_cadd",
			type	: "POST",
			data	: formData,
			success	: function(resData) {
				alert("일정이 추가 되었습니다.");
				window.location.reload();
			},
			error	: function() {
				alert("관리자에게 문의하세요.(일정추가)");
			}
		});
	}

	$(function() {
		$("#addCalBtn").click(function(){
			addCalendar();
		});
	});
</script>
<script>
	function getCalData() {
		$.ajax({
			url		: "${pageContext.request.contextPath }/grp_cal/grp_calendar_clist",
			type	: "POST",
			success	: function(resData) {
				for(var i = 0; i < resData.length; i++) {
					resData[i].start 	= resData[i].comstartDate;
					resData[i].end 		= resData[i].comendDate;
					resData[i].title	= resData[i].comcalContent;
					resData[i].color	= "purple";
				}
				getCalendar(resData);
				
			},
			error	: function() {
				alert("관리자에게 문의하세요.(불러오기)");
			}
		});
	}


    function getCalendar(resData) {
        var calendarEl = document.getElementById('calendar');

        var calendar = new FullCalendar.Calendar(calendarEl, {
            plugins: ['interaction', 'dayGrid'],
            header: {
                left: 'prevYear,prev,next,nextYear today',
                center: 'title',
                right: 'dayGridMonth,dayGridWeek,dayGridDay'
            },
            navLinks: true,
            editable: true,
            eventLimit: true,
            locales: "ko",
            events: resData
        });

        calendar.render();
    }
</script>



	

</html>