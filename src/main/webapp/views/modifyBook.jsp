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
	
    <title>Document</title>
	<style>
		.my-containter{
			max-width:600px;
			margin-top: 40px;
			padding: 32px;
			background-color:#fff;
			border-radius: 10px;
			box-shadow:0 8px 20px 0 rgba(0,0,255,0.5);
		}
		
	</style>	
		
</head>
<body>
	<!--<h2> insertBoard.jsp </h2>-->
	
	<div class="container my-containter">
		<!-- 제목 -->
		<p class="fs-2 text-center"> 책 정보 수정 </p>
		
		<form action="/modifyBook.do" method="post" enctype="multipart/form-data">		  
		  <div class="mb-3">
		  	<input type="hidden" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="book_idx" value="${book.book_idx}">
		    <label for="exampleInputEmail1" class="form-label">책 제목</label>
		    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="book_title" value="${book.book_title}">
		  </div>
		  <div class="mb-3">
		  	<label for="exampleInputEmail1" class="form-label">저자</label>
		  	<input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="author" value="${book.author}" >
		  </div>
		  <div class="mb-3">
		  	<label for="exampleInputEmail1" class="form-label">출판사</label>
		  	<input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="publisher" value="${book.publisher}" >
  		  </div>
  		  <div class="mb-3">
		  	<label for="exampleInputEmail1" class="form-label">장르</label>
		  	<input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="genre" value="${book.genre}" > 
  		  </div>
  		  
  		  <!-- 수정사항: 기본 선택 js 처리 필요 -->
  		  <div class="mb-3">
		  	<label for="exampleInputEmail1" class="form-label">독서 상태</label>
			<input type="radio" name="status_val" value="0">시작
			<input type="radio" name="status_val" value="1">진행 중
			<input type="radio" name="status_val" value="2">완료		    
  		  </div>
  		  
  		  <div class="mb-3">
		  	<label for="exampleInputEmail1" class="form-label">이미지</label>
		  	<input type="file" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="file">		    
  		  </div>
		 
		  <div class="d-grid gap-2 d-md-flex justify-content-md-end">			 		
			  <button type="submit" class="btn btn-primary">Submit</button>
			  <button type="reset" class="btn btn-danger">Reset</button>
		  </div>	  
		</form>
		
	</div>
    
</body>
</html>