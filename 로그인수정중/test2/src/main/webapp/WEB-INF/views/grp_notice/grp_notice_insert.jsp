<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>VV Entertainment GroupWare 공지사항</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/notice_text.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/notice_common.css">
    
    
    

    <script src="https://kit.fontawesome.com/62ab751ce0.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <script src="ckeditor/ckeditor.js"></script>


</head>

<body>
    <div class="page-wrap ">
        <div class="container p20 bg-white">
            <div class="board-insert">
               
                <form method="POST" action="grp_board_save.html">
                     <div class="title">
                    <h3 class=" font18 m-b5">
                        공지사항 작성
                    </h3>
                </div>
                    <table>
                        <tr>
                            <td class="td-10 center weight700  bg-sub">게시글 분류</td>
                            <td class="td-40 p-lr3">
                                <select name="" class="sel-100">
                                    <option value="notice">공지사항</option>
                                    <option value="board">일반게시글</option>
                                </select>
                            </td>
                            <td class="td-10 center weight700  bg-sub">게시글 상태</td>
                            <td class="td-40 p-lr3">
                                <input type="checkbox"/> 비밀글
                            </td>
                        </tr>
                        <tr>
                            <td  class="td-10 center weight700  bg-sub">게시글 제목</td>
                            <td colspan="3"  class="td-90 p-lr3">
                                <input type="text" class="input-100" maxlength="100" required/> 
                            </td>
                            
                        </tr>
                        <tr>
                            <td  class="td-10 center weight700 bg-sub">작성자</td>
                            <td colspan="3"  class="td-90 p-lr3">
                                <input type="text" class="input-50" maxlength="5" required/> 
                            </td>
                            
                        </tr>
                        <tr>
                            <td  class="td-10 center weight700  bg-sub">내용</td>
                            <td colspan="3"  class="td-90 p-lr3" style="border: 2px; padding-bottom:2px ;">
                                <textarea id="editor" name="" style=" border: 1px solid #cccccc;padding: 10px; border-radius: 2px;" class="noto">
                                
                                </textarea>
                                <script>
                                    CKEDITOR.replace('editor');
                                    CKEDITOR.config.height=300;
                                </script>
                            </td>
                            
                        </tr>
                        <tr>
                            <td  class="td-10 center weight700 bg-sub">첨부파일</td>
                            <td colspan="3"  class="td-90 p-lr3">
                                <input type="file" class="input-100" />
                            </td>
                           
                        </tr>
                    </table>
                    <div class="btn-grp center m-t10">
                        <button type="submit" class="btn-normal">게시글저장</button>
                        <button type="button" onclick="location.href='admin.html'" class="btn-cancel">게시글목록</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
<script>
    $(function () {
        $("tr:nth-child(2n+1)").addClass("tr-even");
    });
</script>

</html>