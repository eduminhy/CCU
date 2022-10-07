package com.team200.proj.dao;


import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.team200.proj.vo.ScheduledateVO;
import com.team200.proj.vo.SeatVO;
import com.team200.proj.vo.UserVO;
import com.team200.proj.vo.showVO;

@Mapper
@Repository
public interface BookDAO {
	public ScheduledateVO getScheduleInfo(String scheduleDate_id);
	public List<SeatVO> getSeatState(String scheduleDate_id);
	public int bookSeatOk(SeatVO vo);
	public UserVO getUserInfo(String id);
	public showVO getShowInfo(String scheduleDate_id);
	public List<SeatVO> getSeatNum(String scheduleDate_id);
	public int bookSeatComplete(SeatVO vo);
	
}
