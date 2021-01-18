<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
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