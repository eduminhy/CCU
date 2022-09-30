package com.team200.proj.service;

import java.util.List;

import com.team200.proj.vo.showVO;

public interface ShowService {
	public List<showVO> getShowList(String genre);
	public List<showVO> getNewList(String genre);
	public List<showVO> WeeklyRankingList(String genre);
}
