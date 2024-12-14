package com.springboot.bonusbooklet.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springboot.bonusbooklet.mapper.BookMapper;
import com.springboot.bonusbooklet.model.BookDO;

@Service
public class BookServiceImpl implements BookService {
	
	@Autowired
	private BookMapper bMapper;

	@Override
	public ArrayList<BookDO> getBookList() {
		return bMapper.getBookList();
	}

	@Override
	public void insertBook(BookDO bdo) {
		bMapper.insertBook(bdo);
	}

	@Override
	public BookDO getBook(BookDO bdo) {
		return bMapper.getBook(bdo);
	}

	@Override
	public void updateBook(BookDO bdo) {
		bMapper.updateBook(bdo);
	}

	@Override
	public void deleteBook(BookDO bdo) {
		bMapper.deleteBook(bdo);
	}

	@Override
	public ArrayList<BookDO> searchBook(String searchCon, String searchKey) {
		return bMapper.searchBook(searchCon, searchKey);
	}

}
