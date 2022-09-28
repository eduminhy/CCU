package com.team200.proj.service;

import com.team200.proj.vo.festivalVO;
import com.team200.proj.vo.placeVO;
import com.team200.proj.vo.ShowVO;

public interface DBdataService {
	public void inputPlaceData(placeVO pVO); 
	public void inputShowData(ShowVO sVO);
	public void inputFestivalData(festivalVO fVO);
}
