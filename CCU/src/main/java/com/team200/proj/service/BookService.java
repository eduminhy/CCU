package com.team200.proj.service;

import java.util.List;

import com.team200.proj.vo.OrderlistVO;
import com.team200.proj.vo.ScheduledateVO;
import com.team200.proj.vo.SeatVO;
import com.team200.proj.vo.UserVO;
import com.team200.proj.vo.showVO;

public interface BookService {
	public int putSchedule(String showdb_id, String showDate, String showTime, int showPrice);
	public List<ScheduledateVO> getSchedule(String showdb_id, String showDate, String showTime);
	public ScheduledateVO getScheduleInfo(String scheduleDate_id);
	public ScheduledateVO getShowInfo(String scheduleDate_id);
	public UserVO getUserInfo(String id);
	public List<SeatVO> getSeatInfo(String scheduleDate_id);
	public int putOrderlist(String orderno, String user_id, String scheduleDate_id, String imp_uid, String applynum, String price, String addr, String email);
	public int putSeatInfo(String seat_num, String order_list_no, String seatcnt);
	public OrderlistVO getOrder(String no);
}
