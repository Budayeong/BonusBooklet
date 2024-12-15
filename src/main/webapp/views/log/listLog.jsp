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
   <link rel="stylesheet" href="/css/listLog.css" />
</head>
<body>

	<div class="container">
	
		<!-- 상단 -->
		<p class="fs-2 text-center">${book.book_title}</p>
        
        <!-- 게시판 -->
		<div class="list_area">
		
			<!-- 수정사항: Log 검색 수정 필요 -->
			<!-- 검색 / 글쓰기 -->	
			<div class="board_option">
				<div >
					<form action="/searchLog.do"  class="search_box">
						<select name="searchCon" class="search-select" aria-label="Default select example">
							<option value="log_title">제목 </option>
							<option value="hashtag"> 해시태그 </option>
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
					<a href="insertLog.do?book_ref=${book.book_idx}">✏️독서기록 쓰기</a>
				</div>
			</div>
			
			
        
	        <!-- 수정사항 : 등록한 독서기록이 없을때 디자인, 검색결과가 없을때, 별점, 최신 순 등 정렬 기능 -->
	        <!-- 게시판 -->
	       	<c:if test="${empty logList}">
				<p>등록한 책이 없습니다.</p>
			</c:if>
			<table class="table table-hover">
				<tbody>
					<c:forEach var="log" items="${logList}">
						<tr>
					        <th scope="row">${log.log_idx}</th>
					        <td><a href="viewLog.do?log_idx=${log.log_idx }" class="log_title" >${log.log_title}</a></td>
					        <td>${log.date}</td>
					        <td>${log.page} p</td>
					        <td>${log.hashtag}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		
		
	</div>
	
</body>
</html>