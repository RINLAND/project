<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       
 <%@include file="/WEB-INF/views/grp_admin/grp_admin_header.jsp"%>
 



<body class="is-preload">

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Main -->
		<div id="main">
			<div class="inner">
				<!-- Header -->
					<%@include file = "/WEB-INF/views/grp_admin/grp_admin_auth.jsp" %>

				<!-- Content -->

				<div class="main-wrap">

					<div class="main-top">
						<div class="center">
						<h3><Strong><i class="fas fa-compact-disc"></i> LOVE SICK 앨범 컨셉아트 사전 공개</Strong></h3>
						
						 <div class="banner-wrap center">        
        
					        <div class="banner">
					            <img src="${pageContext.request.contextPath }/images/1.jpg"/>
					            <img src="${pageContext.request.contextPath }/images/2.jpg"/>
					            <img src="${pageContext.request.contextPath }/images/3.jpg"/>
					            <img src="${pageContext.request.contextPath }/images/4.jpg"/>
					        </div>
        
    					</div>
        <div class="btn-grp">
            <button id="prev" class="prev"><i class="fas fa-angle-left"></i></button>
            <button id="next" class="next"><i class="fas fa-angle-right"></i></button>
        </div> 
					</div>	
					</div>
					<div class="main-bottom flex flex-justify">
						
						<div class="box1">
							<span class="font20"><strong>공지사항</strong></span>
							<table class="center">
								<tr class="center f6 weight700 font14 fontwhite" style="background-color:rgba(98, 0, 234, 0.8)">
									<td class="td-5">
                                        <input type="checkbox" onClick="chkAll();"/>
                                    </td>
									<td class="td-30">게시글 제목</td>
									<td class="td-30">작성자</td>
									<td class="td-30">게시일</td>
								</tr>	
				<c:forEach var="noticeList" items="${noticeList}" varStatus="status">
						<tr class="center font14">
									<td><input type="checkbox"  name="chk" class="chk" data-uid="${artList.aid}" data-code="${boardCode}" /></td>
					<td><c:out value="${noticeList.brdtitle}"/></td>
					<td><c:out value="${noticeList.brdwriter}"/></td>
					<td><c:out value="${noticeList.brddate}"/></td>
					</tr>
				</c:forEach>	
                       
				</table>
				</div>
						<div class="box2">
							<span><strong>관련 참고 사이트</strong></span>
							<table>
							<tr>
							<td class="td-5">
                                        <input type="checkbox" onClick="chkAll();"/>
                                    </td>
								<td>엔터테인먼트</td>
								<td>사이트 주소 </td>
							</tr>
							<tr>
								<td><input type="checkbox"  name="chk" class="chk" data-uid="${artList.aid}" data-code="${boardCode}" /></td>
								<td>SM entertainment</td>
								<td><a href="https://www.smtown.com/">https://www.smtown.com/</a> </td>
							</tr>
							<tr>
								<td><input type="checkbox"  name="chk" class="chk" data-uid="${artList.aid}" data-code="${boardCode}" /></td>
								<td>YG entertainment</td>
								<td><a href="https://www.ygfamily.com/">https://www.ygfamily.com/</a>  </td>
							</tr>
							<tr>
								<td><input type="checkbox"  name="chk" class="chk" data-uid="${artList.aid}" data-code="${boardCode}" /></td>
								<td>JYP entertainment</td>
								<td> <a href="https://www.jype.com/">https://www.jype.com/</a>  </td>
							</tr>
							<tr>
								<td><input type="checkbox"  name="chk" class="chk" data-uid="${artList.aid}" data-code="${boardCode}" /></td>
								<td>빅히트 엔터테인먼트</td>
								<td> <a href="https://www.bighitcorp.com/kor/">https://www.bighitcorp.com/</a> </td>
							</tr>
							</table>
						</div>
					
						
					</div>


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
    $(function(){
        var imgCount = $(".banner").find("img").length;
        // alert(imgCount);

        //배열번호가 0번부터 시작
        var currentIndex = 0;

        var imgWidth = $(".banner-wrap").width();
        //alert(imgWidth); //모니터 해상도 구할때 씀.

        function showImg(index){
            //별도의 메소드를 만들어 밑에서 사용
            //이미지 찾아가기
            var left = - (index * imgWidth);
            $(".banner").css("left", left); 
        }

        $("#prev").click(function(){
            currentIndex--;
            if(currentIndex < 0){
                currentIndex = imgCount - 1;
            }
            showImg(currentIndex);
        });

        $("#next").click(function(){
            currentIndex++;
            if(currentIndex >= imgCount){
                currentIndex = 0;
            }
            showImg(currentIndex);
        });
    });
</script>
</html>