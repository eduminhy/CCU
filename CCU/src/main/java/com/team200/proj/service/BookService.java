package com.team200.proj.service;

import java.util.List;

import com.team200.proj.vo.ScheduledateVO;
import com.team200.proj.vo.SeatVO;
import com.team200.proj.vo.UserVO;
import com.team200.proj.vo.showVO;

public interface BookService {
	public ScheduledateVO getScheduleInfo(String scheduleDate_id);
	public List<SeatVO> getSeatState(String scheduleDate_id);
	public int bookSeatOk(SeatVO vo);
	public UserVO getUserInfo(String id);
	public showVO getShowInfo(String scheduleDate_id);
	public List<SeatVO> getSeatNum(String scheduleDate_id);
	public int bookSeatComplete(SeatVO vo);
}
