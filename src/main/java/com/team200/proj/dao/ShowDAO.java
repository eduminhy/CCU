package com.team200.proj.dao;


import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;



import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.team200.proj.vo.BoardVO;
import com.team200.proj.vo.ReviewVO;
import com.team200.proj.vo.showVO;

@Mapper
@Repository
public interface ShowDAO {

	public List<showVO> search(String search);
	
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
	public void setReview(ReviewVO vo);
	public int reviewTest(ReviewVO vo);
}
