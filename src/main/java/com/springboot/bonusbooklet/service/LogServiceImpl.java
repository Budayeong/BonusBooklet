package com.springboot.bonusbooklet.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springboot.bonusbooklet.mapper.LogMapper;
import com.springboot.bonusbooklet.model.LogDO;

@Service
public class LogServiceImpl implements LogService {
	
	@Autowired
	private LogMapper lMapper;

	@Override
	public ArrayList<LogDO> getLogList(int book_ref) {
		return lMapper.getLogList(book_ref);
	}

	@Override
	public void insertLog(LogDO bdo) {
		lMapper.insertLog(bdo);
	}

	@Override
	public LogDO getLog(LogDO bdo) {
		return lMapper.getLog(bdo);
	}

	@Override
	public void updateLog(LogDO bdo) {
		lMapper.updateLog(bdo);
	}

	@Override
	public void deleteLog(LogDO bdo) {
		lMapper.deleteLog(bdo);
	}

	@Override
	public ArrayList<LogDO> searchLog(String searchCon, String searchKey) {
		return lMapper.searchLog(searchCon, searchKey);
	}


}
