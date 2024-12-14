package com.springboot.bonusbooklet.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.springboot.bonusbooklet.model.BookDO;
import com.springboot.bonusbooklet.model.LogDO;
import com.springboot.bonusbooklet.service.BookService;
import com.springboot.bonusbooklet.service.BookServiceImpl;
import com.springboot.bonusbooklet.service.LogService;
import com.springboot.bonusbooklet.utils.FileUtil;

import jakarta.servlet.http.HttpServletRequest;
import org.springframework.web.bind.annotation.RequestParam;



@Controller
public class LogController {
	
	@Autowired
	LogService lService;
	@Autowired
	BookService bService;

	// 독서기록 목록
	@GetMapping(value="/getLogList.do")
	public ModelAndView getLogList(ModelAndView mav, HttpServletRequest request) {
		int book_ref = Integer.parseInt(request.getParameter("book_ref")); 
		
		mav.addObject("logList", lService.getLogList(book_ref));
		mav.addObject("book", bService.getBook(book_ref));
		mav.setViewName("log/listLog");
		
		return mav;
	}
	
	// 독서기록 등록
	@GetMapping(value="/insertLog.do")
	public ModelAndView insertLogGet(ModelAndView mav, HttpServletRequest request) {
		int book_ref = Integer.parseInt(request.getParameter("book_ref"));
		mav.addObject("book_ref", book_ref);
		mav.setViewName("log/insertLog");
		return mav;
	}
	
	@PostMapping(value="/insertLog.do")
	public ModelAndView insertLogPost(LogDO ldo, ModelAndView mav, HttpServletRequest request) {
//		int book_ref = Integer.parseInt(request.getParameter("book_ref"));
//		ldo.setBook_ref(book_ref);
		
		// 이미지 업로드
		String uploadsDir="";
		String log_image="";
		try {
			uploadsDir = System.getProperty("user.dir")+"/target/classes/static/uploads";
			String fileName = FileUtil.uploadFile(request, uploadsDir);
			log_image = FileUtil.renameFile(uploadsDir, fileName);
		}
		catch (Exception e) {
			System.err.println("파일 업로드 에러");
			e.printStackTrace();
		}
		ldo.setLog_image(log_image);
		
		lService.insertLog(ldo);
		mav.setViewName("redirect:getLogList.do?book_ref="+ldo.getBook_ref());
		return mav;
	}
	
	
	

	
}

