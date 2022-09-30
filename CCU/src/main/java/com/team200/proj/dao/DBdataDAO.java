package com.team200.proj.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.team200.proj.vo.festivalVO;
import com.team200.proj.vo.placeVO;
import com.team200.proj.vo.showVO;

@Mapper
@Repository
public interface DBdataDAO {
	public void inputPlaceData(placeVO pVO);
	public void inputShowData(showVO sVO);
	public void inputFestivalData(festivalVO sVO);
	public void popularInputMain(showVO sVO);
	public void popularWInputMain(showVO sVO);
	public void popularMInputMain(showVO sVO);
	public void popularChildInputMain(showVO sVO);
	
	

}
