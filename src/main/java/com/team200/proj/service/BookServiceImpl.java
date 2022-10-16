package com.team200.proj.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.team200.proj.dao.BookDAO;
import com.team200.proj.vo.OrderlistVO;
import com.team200.proj.vo.ScheduledateVO;
import com.team200.proj.vo.SeatVO;
import com.team200.proj.vo.StateVO;
import com.team200.proj.vo.UserVO;
import com.team200.proj.vo.showVO;

@Service
public class BookServiceImpl implements BookService {
	@Inject
	BookDAO dao;

	@Override
	public int putSchedule(String showdb_id, String showDate, String showTime, int showPrice) {
		return dao.putSchedule(showdb_id, showDate, showTime, showPrice);
	}

	@Override
	public List<ScheduledateVO> getSchedule(String showdb_id, String showDate, String showTime) {
		return dao.getSchedule(showdb_id, showDate, showTime);
	}

	@Override
	public ScheduledateVO getScheduleInfo(String scheduleDate_id) {
		return dao.getScheduleInfo(scheduleDate_id);
	}

	@Override
	public ScheduledateVO getShowInfo(String scheduleDate_id) {
		return dao.getShowInfo(scheduleDate_id);
	}

	@Override
	public UserVO getUserInfo(String id) {
		return dao.getUserInfo(id);
	}

	@Override
	public int putSeatState(String scheduleDate_id, String seatno) {
		return dao.putSeatState(scheduleDate_id, seatno);
	}
	
	@Override
	public List<StateVO> getSeatState(String scheduleDate_id) {
		return dao.getSeatState(scheduleDate_id);
	}
	
	@Override
	public int DelSeatState(String scheduleDate_id, String seatno) {
		return dao.DelSeatState(scheduleDate_id, seatno);
	}
	
	@Override
	public List<SeatVO> getSeatInfo(String scheduleDate_id) {
		return dao.getSeatInfo(scheduleDate_id);
	}

	@Override
	public int putOrderlist(String orderno, String user_id, String scheduleDate_id, String imp_uid, String applynum,
			String price, String addr, String email) {
		return dao.putOrderlist(orderno, user_id, scheduleDate_id, imp_uid, applynum, price, addr, email);
	}

	@Override
	public int putSeatInfo(String seat_num, String order_list_no, String seatcnt) {
		return dao.putSeatInfo(seat_num, order_list_no, seatcnt);
	}

	@Override
	public OrderlistVO getOrder(String no) {
		return dao.getOrder(no);
	}

	@Override
	public int AutoDel() {
		return dao.AutoDel();
	}

	
	
	
}
