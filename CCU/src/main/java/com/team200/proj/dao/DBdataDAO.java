package com.team200.proj.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.team200.proj.vo.placeVO;
import com.team200.proj.vo.showVO;

@Mapper
@Repository
public interface DBdataDAO {
	public void inputPlaceData(placeVO pVO);
	public void inputShowData(showVO sVO);
}
