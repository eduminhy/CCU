package com.team200.proj.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.team200.proj.dao.BookDAO;
import com.team200.proj.vo.ScheduledateVO;
import com.team200.proj.vo.SeatVO;
import com.team200.proj.vo.UserVO;
import com.team200.proj.vo.showVO;

@Service
public class BookServiceImpl implements BookService {
	@Inject
	BookDAO dao;

	@Override
	public UserVO getUserInfo(String id) {
		return dao.getUserInfo(id);
	}

	@Override
	public showVO getShowInfo(String scheduleDate_id) {
		return dao.getShowInfo(scheduleDate_id);
	}

	@Override
	public int bookSeatOk(SeatVO vo) {
		return dao.bookSeatOk(vo);
	}

	@Override
	public ScheduledateVO getScheduleInfo(String scheduleDate_id) {
		return dao.getScheduleInfo(scheduleDate_id);
	}

	@Override
	public List<SeatVO> getSeatState(String scheduleDate_id) {
		return dao.getSeatState(scheduleDate_id);
	}

	@Override
	public List<SeatVO> getSeatNum(String scheduleDate_id) {
		return dao.getSeatNum(scheduleDate_id);
	}

	@Override
	public int bookSeatComplete(SeatVO vo) {
		return dao.bookSeatComplete(vo);
	}
	
	
}
