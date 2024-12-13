package com.springboot.bonusbooklet.service;

import java.util.ArrayList;

import com.springboot.bonusbooklet.model.BookDO;

public interface BookService {
	
	// 전체 책 출력
	ArrayList<BookDO> getBookList();

	// 책 저장
	void insertBook(BookDO bdo);

	// 책 선택
	BookDO getBook(BookDO bdo);
	
	// 책 수정
	void updateBook(BookDO bdo);
		
}
