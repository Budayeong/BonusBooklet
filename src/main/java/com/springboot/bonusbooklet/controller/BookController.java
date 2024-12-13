package com.springboot.bonusbooklet.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.springboot.bonusbooklet.model.BookDO;
import com.springboot.bonusbooklet.service.BookServiceImpl;
import com.springboot.bonusbooklet.utils.FileUtil;

import jakarta.servlet.http.HttpServletRequest;


@Controller
public class BookController {
	
	@Autowired
	BookServiceImpl bService;

	
	@GetMapping(value="/getBookList.do")
	public ModelAndView bookList(ModelAndView mav) {
		mav.addObject("bookList", bService.getBookList());
		mav.setViewName("bookList");
		
		return mav;
	}
	
	@GetMapping(value="/insertBook.do")
	public ModelAndView insertBookGet(ModelAndView mav) {
		mav.setViewName("insertBook");
		return mav;
	}
	
	@PostMapping(value="/insertBook.do")
	public ModelAndView insertBookPost(BookDO bdo, ModelAndView mav, HttpServletRequest request) {
		bdo.setStatus(Integer.parseInt(request.getParameter("status_val")));
	
		// 이미지 업로드
		String book_image="";
		try {
			String uploadsDir = "C:/uploads"; 
			String fileName = FileUtil.uploadFile(request, uploadsDir);
			book_image = FileUtil.renameFile(uploadsDir, fileName);
		}
		catch (Exception e) {
			System.err.println("파일 업로드 에러");
			e.printStackTrace();
		}
		bdo.setBook_image(book_image);
		
		bService.insertBook(bdo);
		mav.setViewName("redirect:getBookList.do");
		return mav;
	}
	
	@GetMapping(value="/modifyBook.do")
	public ModelAndView modifyBookGet(BookDO bdo, ModelAndView mav) {
		mav.addObject("book", bService.getBook(bdo));
		mav.setViewName("modifyBook");
		return mav;
	}
	
	@PostMapping(value="/modifyBook.do")
	public ModelAndView modifyBookPost(BookDO bdo, ModelAndView mav, HttpServletRequest request) {
		bdo.setStatus(Integer.parseInt(request.getParameter("status_val")));
		
		// 이미지 업로드
		String book_image="";
		try {
			String uploadsDir = "C:/uploads"; 
			String fileName = FileUtil.uploadFile(request, uploadsDir);
			book_image = FileUtil.renameFile(uploadsDir, fileName);
		}
		catch (Exception e) {
			System.err.println("파일 업로드 에러");
			e.printStackTrace();
		}
		bdo.setBook_image(book_image);
		
		bService.updateBook(bdo);
		mav.setViewName("redirect:getBookList.do");
		return mav;
	}
	
	

	
}

