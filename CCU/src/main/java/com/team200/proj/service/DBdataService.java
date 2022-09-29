package com.team200.proj.service;

import com.team200.proj.vo.festivalVO;
import com.team200.proj.vo.placeVO;
import com.team200.proj.vo.showVO;

public interface DBdataService {
	public void inputPlaceData(placeVO pVO); 
	public void inputShowData(showVO sVO);
	public void inputFestivalData(festivalVO fVO);
	public void popularInputMain(showVO sVO);
	public void popularWInputMain(showVO sVO);
	public void popularMInputMain(showVO sVO);
	public void popularChildInputMain(showVO sVO);
}
