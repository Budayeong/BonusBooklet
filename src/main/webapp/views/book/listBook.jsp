<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <!--CSS 라이브러리-->
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
   <!--JS 라이브러리-->
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <title>Document</title>
   <style>
      .my-container{
         max-width:1000px;
         margin-top:40px;
         padding:32px;
         background-color:#fff;
         border-radius:10px;
         box-shadow: 0 8px 20px 0 rgba(0,0,255,0.5);
      }
   </style>
</head>
<body>
   <div class="container my-container">
      <!--제목-->
      <p class="fs-2 text-center">별책부록</p>
      	<p>나는 몇권의 책을 읽었을까</p>
          
          <form class="d-flex" action="/searchBook.do" >
          	<select name="searchCon" class="form-select" aria-label="Default select example">
          		<option value="book_title"> 책 제목 </option>
          		<option value="author"> 저자 </option>
          		<option value="publisher"> 출판사 </option>
          		<option value="genre"> 장르 </option>
          	</select>
          	<input name="searchKey" class="form-control me-2" type="search" >
          	<button class="btn btn-outline-success" type="submit">Search</button>
          </form>
          
          <button class="btn btn-danger" onclick="location.href='insertBook.do'">등록</button>
               
       
       <!-- 수정사항 : 등록한 책이 없을때 디자인, 검색결과가 없을때, 독서상태 따라 정렬기능 -->
       	<c:if test="${empty bookList}">
			<p>등록한 책이 없습니다.</p>
		</c:if>
		
		<div class="container">
		  <div class="row">
		    <c:forEach var="book" items="${bookList}">
		      <div class="col-md-4 mb-4">
		        <div class="card" style="width: 100%;">
		          <a href="getLogList.do?book_ref=${book.book_idx}" class="btn btn-primary"><img src="/uploads/${book.book_image}" class="card-img-top" alt="..."></a>
		          <div class="card-body">
		            <h5 class="card-title">${book.book_title}</h5>
		            <p class="card-text">${book.author}</p>
		            <p class="card-text">${book.publisher}</p>
		            <p class="card-text">${book.genre}</p>
		            <c:if test="${book.status == 0}">
		              <p class="card-text">시작</p>
		            </c:if>
		            <c:if test="${book.status == 1}">
		              <p class="card-text">독서 중</p>
		            </c:if>
		            <c:if test="${book.status == 2}">
		              <p class="card-text">완독</p>
		            </c:if>
		            <a href="editBook.do?book_idx=${book.book_idx}" class="btn btn-primary">수정하기</a>
		            <a href="deleteBook.do?book_idx=${book.book_idx}" class="btn btn-primary">삭제하기</a>
		          </div>
		        </div>
		      </div>
		    </c:forEach>
		  </div>
		</div>


        
        
         
   </div>
   
   
</body>
</html>