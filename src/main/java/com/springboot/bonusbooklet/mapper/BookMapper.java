package com.springboot.bonusbooklet.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.springboot.bonusbooklet.model.BookDO;

@Mapper
public interface BookMapper {
	
	// 전체 책 출력
	ArrayList<BookDO> getBookList();
	
	// 책 저장
	void insertBook(BookDO bdo);
	
	// 책 선택
	BookDO getBook(BookDO bdo);
	
	// 책 수정
	void updateBook(BookDO bdo);
		
}
