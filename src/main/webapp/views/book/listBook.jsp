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
   <link rel="stylesheet" href="/css/listBook.css" />
    
</head>
<body>
   <div class="container">
   	
    			<div class="index_txt">
	                <p class="fs-2 text-center">별책부록</p>
	                <p class="title_txt">나는 몇권의 책을 읽었을까</p>
    			</div>

                <div class="list_area">
                
                <!-- 검색 / 글쓰기 -->	
				<div class="board_option">
					<div>
						<form action="/searchBook.do"  class="search_box">
							<select name="searchCon" class="search-select" aria-label="Default select example">
								<option value="book_title"> 책 제목 </option>
								<option value="author"> 저자 </option>
								<option value="publisher"> 출판사 </option>
								<option value="genre"> 장르 </option>
							</select>
							<div class="input_box">
								<input name="searchKey"  type="search" >
								<button class="btn_search" type="submit"></button>
							</div>
						</form>
					</div>
					<div class="write_btn">
						<a href="insertBook.do">📖책 등록하기</a>
					</div>
				</div>
				
				<!-- 책 이미지 -->
				<div class="row">
				  <c:forEach var="book" items="${bookList}">
				    <div class="col-12 col-md-2-4 mb-4 custom-col">
				      <div class="card">
				        <a href="getLogList.do?book_ref=${book.book_idx}">
				          <img src="/uploads/${book.book_image}" class="card-img-top" alt="...">
				        </a>
				        <div class="card-body d-flex flex-column justify-content-between">
				          <div>
				            <h4 class="card-title text-truncate" title="${book.book_title}">${book.book_title}</h4>
				            <div class="info-row">
				              <span>저자</span>
				              <p class="card-text">${book.author}</p>
				            </div>
				            <div class="info-row">
				              <span>출판사</span>
				              <p class="card-text">${book.publisher}</p>
				            </div>
				            <div class="info-row">
				              <span>장르</span>
				              <p class="card-text">${book.genre}</p>
				            </div>
				            <c:if test="${book.status == 0}">
				              <span class="badge rounded-pill bg-start text-dark">시작</span>
				            </c:if>
				            <c:if test="${book.status == 1}">
				              <span class="badge rounded-pill bg-ing text-dark">독서 중</span>
				            </c:if>
				            <c:if test="${book.status == 2}">
				              <span class="badge rounded-pill bg-end text-dark">완독</span>
				            </c:if>
				          </div>
				          <div class="mt-auto d-flex justify-content-end gap-2">
				            <a href="editBook.do?book_idx=${book.book_idx}" class="btn btn-edit">수정하기</a>
				            <a href="deleteBook.do?book_idx=${book.book_idx}" class="btn btn-delete">삭제하기</a>
				          </div>
				        </div>
				      </div>
				    </div>
				  </c:forEach>
				</div>


				
				
				
				

				</div>
   
   </div>
</body>
</html>