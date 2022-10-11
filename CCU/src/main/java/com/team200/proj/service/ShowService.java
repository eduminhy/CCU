package com.team200.proj.service;

import java.util.List;

import com.team200.proj.vo.BoardVO;
import com.team200.proj.vo.ReviewVO;
import com.team200.proj.vo.showVO;

public interface ShowService {
	public showVO showDetail(String show_id);

	public List<ReviewVO> getReview(String show_id);

	public List<showVO> getShowList(String genre);

	public List<showVO> getNewList(String genre);

	public List<showVO> WeeklyRankingList(String genre);
	
	public void setReport(int id,String content,String logid);

	public List<BoardVO> getBoardList(String genre);
	public void setMyFav(String user_id, String showdb_id);
	public void delMyFav(String user_id, String showdb_id);
	public int getmyheart(String user_id, String showdb_id);
}
