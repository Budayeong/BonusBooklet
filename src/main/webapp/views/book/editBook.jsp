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
    
                <p class="fs-2 text-center">책 정보 수정</p>

                <div class="board_area">
                	<form action="/editBook.do" method="post" enctype="multipart/form-data">
                	<input type="hidden" name="book_idx" value="${book.book_idx}">
	                    <table>
		                    <tr>
		                      	<td class="left">제목</td>
								<td><input type="text" name="book_title" value="${book.book_title}"></td>
		                    </tr>
		                    <tr>
		                      	<td class="left">저자</td>
								<td><input type="text" name="author" value="${book.author}" ></td>
		                    </tr>
		                    <tr>
		                      	<td class="left">출판사</td>
								<td><input type="text" name="publisher" value="${book.publisher}" ></td>
		                    </tr>
		                    <tr>
		                      	<td class="left">장르</td>
								<td><input type="text" name="genre" value="${book.genre}" ></td>
		                    </tr>
		                    <tr>
		                      	<td class="left">독서 상태</td>
								<td>
									<input type="radio" name="status_val" value="0">시작
									<input type="radio" name="status_val" value="1">진행 중
									<input type="radio" name="status_val" value="2">완료
								</td>
		                    <tr/>
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