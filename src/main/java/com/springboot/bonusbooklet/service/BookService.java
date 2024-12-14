package com.springboot.bonusbooklet.service;

import java.util.ArrayList;

import com.springboot.bonusbooklet.model.BookDO;

public interface BookService {
	
	// 전체 책 출력
	ArrayList<BookDO> getBookList();

	// 책 저장
	void insertBook(BookDO bdo);

	// 책 한권 선택
	BookDO getBook(int book_idx);
	
	// 책 수정
	void updateBook(BookDO bdo);
	
	// 책 삭제
	void deleteBook(BookDO bdo);
	
	// 책 검색
	ArrayList<BookDO> searchBook(String searchCon, String searchKey);
		
}
