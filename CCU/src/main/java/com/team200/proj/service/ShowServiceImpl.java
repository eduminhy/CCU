package com.team200.proj.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.team200.proj.dao.ShowDAO;
import com.team200.proj.vo.BoardVO;
import com.team200.proj.vo.ReviewVO;
import com.team200.proj.vo.showVO;

@Service
public class ShowServiceImpl implements ShowService {
	@Inject
	ShowDAO dao;

	@Override
	public List<showVO> search(String search) {
		return dao.search(search);
	}

	@Override
	public List<showVO> getShowList(String genre) {
		return dao.getShowList(genre);
	}

	@Override
	public List<showVO> getNewList(String genre) {
		return dao.getNewList(genre);
	}

	@Override
	public List<showVO> WeeklyRankingList(String genre) {
		return dao.WeeklyRankingList(genre);
	}

	
	@Override
	public List<BoardVO> getBoardList(String genre) {
		return dao.getBoardList(genre);
	}
	
  	public showVO showDetail(String show_id) {
		// TODO Auto-generated method stub

		return dao.showDetail(show_id);
	}

	@Override
	public List<ReviewVO> getReview(String show_id) {
		return dao.getReview(show_id);
	}


	@Override
	public void setReport(int id, String content, String logid) {
		// TODO Auto-generated method stub
		dao.setReport(id,content,logid);
	}

	@Override
	public void setMyFav(String user_id, String showdb_id) {
		dao.setMyFav(user_id, showdb_id);
		
	}

	@Override
	public void delMyFav(String user_id, String showdb_id) {
		dao.delMyFav(user_id, showdb_id);
		
	}

	@Override
	public int getmyheart(String user_id, String showdb_id) {
		// TODO Auto-generated method stub
		return dao.getmyheart( user_id,  showdb_id);
	}


}
