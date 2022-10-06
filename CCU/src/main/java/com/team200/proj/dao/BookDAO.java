package com.team200.proj.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.team200.proj.vo.ScheduledateVO;
import com.team200.proj.vo.UserVO;
import com.team200.proj.vo.showVO;

@Mapper
@Repository
public interface BookDAO {
	public ScheduledateVO getDateInfo(String showdb_id, String showdate, String showtime);
	public String getPriceInfo(String id);
	public showVO getShowInfo(String showdb_id, String showdate, String showtime);
	public UserVO getUserInfo(String id);
}
