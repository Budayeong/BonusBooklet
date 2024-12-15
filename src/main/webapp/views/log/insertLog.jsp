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
	<link rel="stylesheet" href="/css/insertLog.css" />
		
</head>
<body>

	<div class="container">
    
                <p class="fs-2 text-center">독서기록</p>

                <div class="board_area">
                	<form action="/insertLog.do" method="post" enctype="multipart/form-data">
                		<input type="hidden" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="book_ref" value="${book_ref }">
	                    <table>
		                    <tr>
		                      	<td class="left">제목</td>
								<td><input type="text" name="log_title" /></td>
		                    </tr>
		                    <tr>
		                      	<td class="left">읽은 날짜</td>
								<td><input type="date" name="date" /></td>
		                    </tr>
		                    <tr>
		                      	<td class="left">현재까지<br> 읽은 페이지</td>
								<td><input type="number" name="page" /> P</td>
		                    </tr>
		                    <tr>
		                      	<td class="left">챕터명</td>
								<td><input type="text" name="chapter" /></td>
		                    </tr>
		                    <tr>
		                      	<td class="left">해시태그</td>
								<td><input type="text" name="hashtag" /></td>
		                    </tr>
		                    <tr>
		                      	<td class="left">내용</td>
								<td><textarea name="review" rows="5"style="font-size: 16px;"></textarea></td>
		                    </tr>
		                    <tr>
		                      	<td class="left">이미지</td>
								<td><input type="file" name="file" /></td>
		                    </tr>
	                    </table>
	                    
	                    <div class="board_btn_area">
		   			 		<div class="board_btn">
						        <button type="submit" class="btn btn-write">완료</button>
						    </div>
						</div>
					</form>
                </div>

	</div>
    
</body>
</html>