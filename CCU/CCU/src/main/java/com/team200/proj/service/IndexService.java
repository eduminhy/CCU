package com.team200.proj.service;

import java.util.List;

import com.team200.proj.vo.festivalVO;
import com.team200.proj.vo.showVO;


public interface IndexService {
	public List<festivalVO> outputFestivalData();
	public List<showVO> outputpopularData();
	public List<showVO> outputpopularWData();
	public List<showVO> outputpopularDWMData(int a,String b);
}
