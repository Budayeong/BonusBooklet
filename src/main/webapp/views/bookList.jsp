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
    <!--<h2> insertBoard.jsp </h2>-->
   <div class="container my-container">
      <!--제목-->
      <p class="fs-2 text-center">전체 책 리스트</p>
          
          <form class="d-flex" action="/searchBoardList.do" >
          	<select name="searchCon" class="form-select" aria-label="Default select example">
          		<option value="title"> 글제목 </option>
          		<option value="content"> 글 내용 </option>
          		<option value="writer"> 작성자 </option>
          	</select>
          	<input name="searchKey" class="form-control me-2" type="search" >
          	<button class="btn btn-outline-success" type="submit">Search</button>
          </form>
        <button class="btn btn-danger" onclick="location.href='insertBook.do'">등록</button>
               
      <table class="table table-hover">
        <thead>
          <tr>
            <th scope="col">#(번호)</th>
            <th scope="col">제목</th>
            <th scope="col">저자</th>
            <th scope="col">출판사</th>
            <th scope="col">장르</th>
            <th scope="col">독서 상태</th>
           <th scope="col">modify/delete</th>
          </tr>
        </thead>
        <tbody>
         
       
       	<c:if test="${empty bookList}">
		    <tr>
		        <td colspan="5">등록한 책이 없습니다.</td>
		    </tr>
		</c:if>
		
		<c:forEach var="book" items="${bookList}">
		    <tr>
		        <th scope="row">${book.book_idx}</th>
		        <td>${book.book_title}</td>
		        <td>${book.author}</td>
		        <td>${book.publisher}</td>
		        <td>${book.genre}</td>
		        <c:if test="${book.status == 0}">
		        	<td>시작</td>
		        </c:if>
		        <c:if test="${book.status == 1}">
		        	<td>독서 중</td>
		        </c:if>
		        <c:if test="${book.status == 2}">
		        	<td>완독</td>
		        </c:if>
		        
		        <td>
		            <button class="btn btn-primary" onclick="location.href='modifyBook.do?book_idx=${book.book_idx}'">Modify</button>
		            <button class="btn btn-danger" onclick="location.href='deleteBook.do?book_idx=${book.book_idx}'">Delete</button>
		        </td>
		    </tr>
		</c:forEach>

        
        
         
                 
        </tbody>
      </table>
   </div>
   
   
</body>
</html>