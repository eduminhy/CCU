package com.team200.proj.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.team200.proj.dao.BookDAO;
import com.team200.proj.vo.ScheduledateVO;
import com.team200.proj.vo.UserVO;
import com.team200.proj.vo.showVO;

@Service
public class BookServiceImpl implements BookService {
	@Inject
	BookDAO dao;

	@Override
	public ScheduledateVO getDateInfo(String showdb_id, String showdate, String showtime) {
		return dao.getDateInfo(showdb_id, showdate, showtime);
	}

	@Override
	public String getPriceInfo(String id) {
		return dao.getPriceInfo(id);
	}

	@Override
	public showVO getShowInfo(String showdb_id, String showdate, String showtime) {
		return dao.getShowInfo(showdb_id, showdate, showtime);
	}

	@Override
	public UserVO getUserInfo(String id) {
		return dao.getUserInfo(id);
	}

	
	
}
