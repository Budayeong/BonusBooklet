<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 부트스트랩 CSS 라이브러리 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <!-- 부트스트랩 JS 라이브러리-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="/css/viewLog.css" />
</head>
<body>


    <div class="container">
    
                <p class="fs-2 text-center">독서기록</p>

                <div class="board_area">
                
                    <table>
                        <thead>
                            <tr>
                                <th colspan="2">
                                	<div class="board_title">
                                	<p>${log.log_title}</p>
                                	</div>
                                	<div class="board_info">
                                	<p>읽은 날짜: ${log.date} | 페이지: ${log.page} | 챕터명 ${log.chapter }</p>
                                	</div>
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                	${log.review} <br><br>
                                	<img src="/uploads/${log.log_image}" class="img-fluid" alt="log image">
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    
                    <div class="board_btn_area">
	   			 		<div class="board_btn">
					        <a href="getLogList.do?book_ref=${log.book_ref}" class="btn btn-outline-dark">목록가기</a>
					    </div>
					    <div class="board_btn_right">
					        <a href="editLog.do?log_idx=${log.log_idx}" class="btn btn-edit">수정</a>
					        <a href="deleteLog.do?log_idx=${log.log_idx}&book_ref=${log.book_ref}" class="btn btn-delete">삭제</a>
					    </div>
					</div>
					
                </div>

	</div>

</body>
</html>
