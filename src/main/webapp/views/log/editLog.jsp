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
		<p class="fs-2 text-center"> 독서기록 수정 </p>
		
		<form action="/editLog.do" method="post" enctype="multipart/form-data">		  
		  <input type="hi-ddeb" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="log_idx" value="${log.log_idx }">
		  <div class="mb-3">
		    <label for="exampleInputEmail1" class="form-label">제목</label>
		    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="log_title" value="${log.log_title}">		    
		  </div>
		  <div class="mb-3">
		  	<label for="exampleInputEmail1" class="form-label">읽은 날짜</label>
			<input type="date" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="date" value="${log.date}">		    
		  </div>
		  <div class="mb-3">
		  	<!-- 수정사항: 완독 라디오 버튼 추가 -->
		  	<label for="exampleInputEmail1" class="form-label">현재까지 읽은 페이지</label>
		  	<input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="page" value="${log.page}"> P		    
  		  </div>
  		  <div class="mb-3">
		  	<label for="exampleInputEmail1" class="form-label">챕터명</label>
		  	<input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="chapter" value="${log.chapter}">		    
  		  </div>
  		  <div class="mb-3">
		  	<label for="exampleInputEmail1" class="form-label">해시태그</label>
		  	<input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="hashtag" value="${log.hashtag}">		    
  		  </div>
  		  <div class="mb-3">
			  <label for="exampleInputEmail1" class="form-label">내용</label>
			  <textarea class="form-control" id="exampleInputEmail1" name="review" rows="5"style="font-size: 16px;">${log.review}</textarea>
		  </div>

  		  <div class="mb-3">
		  	<label for="exampleInputEmail1" class="form-label">이미지</label>
		  	<input type="file" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="file">		    
  		  </div>
		 
		  <div class="d-grid gap-2 d-md-flex justify-content-md-end">			 		
			  <button type="submit" class="btn btn-primary">완료</button>
		  </div>	  
		</form>
		
	</div>
    
</body>
</html>