package com.springboot.bonusbooklet.service;

import java.util.ArrayList;

import com.springboot.bonusbooklet.model.BookDO;
import com.springboot.bonusbooklet.model.LogDO;

public interface LogService {
	
	// 해당되는 책의 독서기록 출력
	ArrayList<LogDO> getLogList(int book_ref);
	
	// 독서기록 저장
	void insertLog(LogDO ldo);
	
	// 독서기록 선택
	LogDO getLog(LogDO ldo);
	
	// 독서기록 수정
	void updateLog(LogDO ldo);
	
	// 독서기록 삭제
	void deleteLog(LogDO ldo);
	
	// 독서기록 검색
	ArrayList<LogDO> searchLog(String searchCon, String searchKey);
	
}
