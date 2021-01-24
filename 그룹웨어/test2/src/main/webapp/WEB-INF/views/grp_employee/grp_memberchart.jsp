<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@include file = "/WEB-INF/views/grp_employee/grp_employee_header.jsp" %>

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
                    <h2>조직도</h2>
                </header>

                <div class="main">


                    <div class="page-right bg-white p10">
                        <div class="page-main-wrap">
                            <div class="page-member-top flex flex-justify">

                                <div class="">

                                </div>
                            </div>
                            <div class="title">
                                <h3 class="tomato font18 noto m-t20">
                                    <i class="fas fa-feather-alt"></i>조직도 > 조직도
                                </h3>
                            </div>
                            <div class="page-member-bottom">
                                <div class="page-content center">
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

			<%@include file="/WEB-INF/views/grp_freeboard/grp_freeboard_menu.jsp"%>
			</div>
		</div>

	</div>
</body>

<script type="text/javascript">
    $(function () {

        var datascource = {
            'name': '대표이사',
            'title': 'CEO',
            'className': 'top-level',
            'children': [{
                'name': '마케팅부',
                'title': '마케팅부장',
                'className': 'high-level',
                'children': [{
                    'name': '마케팅과',
                    'title': '마케팅과장',
                    'className': 'middle-level',
                    'children': [{
                        'name': '마케팅과',
                        'title': '대리',
                        'className': 'low-level',
                        'children': [{
                            'name': '마케팅과',
                            'title': '사원',
                            'className': 'bottom-level'
                        }]
                    }]
                }]

            },
            {
                'name': '경영지원부',
                'title': '경영지원부장',
                'className': 'high-level',
                'children': [{
                    'name': '경영지원과',
                    'title': '경영지원과장',
                    'className': 'middle-level',
                    'children': [{
                        'name': '경영지원과',
                        'title': '대리',
                        'className': 'low-level',
                        'children': [{
                            'name': '경영지원과',
                            'title': '사원',
                            'className': 'bottom-level'

                        }]
                    }]
                },


                ]

            },
            {
                'name': '매니지먼트부',
                'title': '매니지먼트부장',
                'className': 'high-level',
                'children': [{
                    'name': '매니지먼트과',
                    'title': '매니지먼트과장',
                    'className': 'middle-level',
                    'children': [{
                        'name': '매니지먼트과',
                        'title': '대리',
                        'className': 'low-level',
                        'children': [{
                            'name': '매니지먼트과',
                            'title': '사원',
                            'className': 'bottom-level'

                        }]
                    }]
                }
                ]
            },
            {
                'name': '엔터사업부',
                'title': '엔터사업부장',
                'className': 'high-level',
                'children': [{
                    'name': '엔터사업과',
                    'title': '엔터사업과장',
                    'className': 'middle-level',
                    'children': [{
                        'name': '엔터사업과',
                        'title': '대리',
                        'className': 'low-level',
                        'children': [{
                            'name': '엔터사업과',
                            'title': '사원',
                            'className': 'bottom-level'

                        }]
                    }]
                }]
            },
            {
                'name': '재무회계부',
                'title': '재무회계부장',
                'className': 'high-level',
                'children': [{
                    'name': '재무회계부',
                    'title': '재무회계과장',
                    'className': 'middle-level',
                    'children': [{
                        'name': '재무회계과',
                        'title': '대리',
                        'className': 'low-level',
                        'children': [{
                            'name': '재무회계과',
                            'title': '사원',
                            'className': 'bottom-level'

                        }]
                    }]
                }]
            },
            {
                'name': '프로듀싱부',
                'title': '프로듀싱부장',
                'className': 'high-level',
                'children': [{
                    'name': '프로듀싱부',
                    'title': '프로듀싱과장',
                    'className': 'middle-level',
                    'children': [{
                        'name': '프로듀싱과',
                        'title': '대리',
                        'className': 'low-level',
                        'children': [{
                            'name': '프로듀싱과',
                            'title': '사원',
                            'className': 'bottom-level'

                        }]
                    }]
                }]
            },
            {
                'name': '영업부',
                'title': '영업부장',
                'className': 'high-level',
                'children': [{
                    'name': '영업부',
                    'title': '영업과장',
                    'className': 'middle-level',
                    'children': [{
                        'name': '영업과',
                        'title': '대리',
                        'className': 'low-level',
                        'children': [{
                            'name': '영업과',
                            'title': '사원',
                            'className': 'bottom-level'

                        }]
                    }]
                }]
            },
            {
                'name': '영상/디자인부',
                'title': '영상/디자인부장',
                'className': 'high-level',
                'children': [{
                    'name': '영상/디자인부',
                    'title': '영상/디자인부',
                    'className': 'middle-level',
                    'children': [{
                        'name': '영상/디자인과',
                        'title': '대리',
                        'className': 'low-level',
                        'children': [{
                            'name': '영상/디자인과',
                            'title': '사원',
                            'className': 'bottom-level'

                        }]
                    }]
                }]
            }
            ]
        };

        $('#chart-container').orgchart({
            'visibleLevel': 5,
            'pan': true,
            'data': datascource,
            'nodeContent': 'title',
            'createNode': function ($node, data) {
                $node.on('click', function (event) {
                    if (!$(event.target).is('.edge, .toggleBtn')) {
                        var $this = $(this);
                        var $chart = $this.closest('.orgchart');
                        var newX = window.parseInt(($chart.outerWidth(true) / 2) - ($this
                            .offset().left - $chart.offset().left) - ($this
                                .outerWidth(true) / 2));
                        var newY = window.parseInt(($chart.outerHeight(true) / 2) - ($this
                            .offset().top - $chart.offset().top) - ($this
                                .outerHeight(true) / 2));
                        $chart.css('transform', 'matrix(1, 0, 0, 1, ' + newX + ', ' + newY +
                            ')');
                    }
                });
            }
        });

    });
</script>

</html>