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
import org.springframework.web.bind.annotation.RequestParam;



@Controller
public class BookController {
	
	@Autowired
	BookServiceImpl bService;

	// 책 목록
	@GetMapping(value="/getBookList.do")
	public ModelAndView bookList(ModelAndView mav) {
		mav.addObject("bookList", bService.getBookList());
		mav.setViewName("book/listBook");
		
		return mav;
	}
	
	// 책 등록
	@GetMapping(value="/insertBook.do")
	public ModelAndView insertBookGet(ModelAndView mav) {
		mav.setViewName("book/insertBook");
		return mav;
	}
	
	@PostMapping(value="/insertBook.do")
	public ModelAndView insertBookPost(BookDO bdo, ModelAndView mav, HttpServletRequest request) {
		bdo.setStatus(Integer.parseInt(request.getParameter("status_val")));
	
		// 이미지 업로드
		String uploadsDir="";
		String book_image="";
		try {
			uploadsDir = System.getProperty("user.dir")+"/target/classes/static/uploads";
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
	
	// 책 수정
	@GetMapping(value="/editBook.do")
	public ModelAndView editBookGet(BookDO bdo, ModelAndView mav) {
		mav.addObject("book", bService.getBook(bdo.getBook_idx()));
		mav.setViewName("book/editBook");
		return mav;
	}
	
	@PostMapping(value="/editBook.do")
	public ModelAndView editBookPost(BookDO bdo, ModelAndView mav, HttpServletRequest request) {
		bdo.setStatus(Integer.parseInt(request.getParameter("status_val")));

		// 이미지 업로드
		String uploadsDir="";
		String book_image="";
		try {
			uploadsDir = System.getProperty("user.dir")+"/target/classes/static/uploads";
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
	
	// 책 삭제
	@GetMapping(value="/deleteBook.do")
	public ModelAndView deleteBookGet(BookDO bdo, ModelAndView mav) {
		bService.deleteBook(bdo);
		mav.setViewName("redirect:getBookList.do");
		return mav;
	}
	
	// 책 검색
	@GetMapping(value="/searchBook.do")
	public ModelAndView searchBookGet(ModelAndView mav, HttpServletRequest requset) {
		String searchCon = requset.getParameter("searchCon");
		String searchKey = requset.getParameter("searchKey");
		
		mav.addObject("bookList", bService.searchBook(searchCon, searchKey));
		mav.setViewName("book/listBook");
		return mav;
	}
	
	
	

	
}

