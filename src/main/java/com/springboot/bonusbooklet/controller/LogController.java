package com.springboot.bonusbooklet.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.ResourceUtils;
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
		// 이미지 업로드
		String uploadsDir="";
		String log_image="";
		try {
			uploadsDir = ResourceUtils.getFile("classpath:static/uploads/").toPath().toString();
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
	
	// 독서기록 상세보기
	@GetMapping(value="/viewLog.do")
	public ModelAndView viewLog(LogDO ldo, ModelAndView mav) {
		mav.addObject("log", lService.getLog(ldo.getLog_idx()));
		mav.setViewName("log/viewLog");
		return mav;
	}
	
	// 독서기록 수정
	@GetMapping(value="/editLog.do")
	public ModelAndView editLogGet(LogDO ldo, ModelAndView mav) {
		mav.addObject("log", lService.getLog(ldo.getLog_idx()));
		mav.setViewName("log/editLog");
		return mav;
	}
	
	@PostMapping(value="/editLog.do")
	public ModelAndView editLogPost(LogDO ldo, ModelAndView mav, HttpServletRequest request) {
		// 이미지 업로드
		String uploadsDir="";
		String log_image="";
		try {
			uploadsDir = ResourceUtils.getFile("classpath:static/uploads/").toPath().toString();
			String fileName = FileUtil.uploadFile(request, uploadsDir);
			log_image = FileUtil.renameFile(uploadsDir, fileName);
		}
		catch (Exception e) {
			System.err.println("파일 업로드 에러");
			e.printStackTrace();
		}
		ldo.setLog_image(log_image);
		
		lService.updateLog(ldo);
		mav.setViewName("redirect:viewLog.do?log_idx="+ldo.getLog_idx());
		return mav;
	}
	
	// 독서기록 삭제
	@GetMapping(value="/deleteLog.do")
	public ModelAndView deleteLogGet(LogDO ldo, ModelAndView mav) {
		int book_ref = ldo.getBook_ref();
		System.err.println(book_ref);
		lService.deleteLog(ldo);
		mav.setViewName("redirect:getLogList.do?book_ref="+book_ref);
		return mav;
	}
	
	
	

	
}

