package com.team200.proj.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team200.proj.dao.DBdataDAO;
import com.team200.proj.vo.festivalVO;
import com.team200.proj.vo.placeVO;
import com.team200.proj.vo.showVO;

@Service
public class DBdataServiceImpl implements DBdataService {
	@Autowired
	DBdataDAO dao;

	@Override
	public void inputPlaceData(placeVO pVO) {
		// TODO Auto-generated method stub
//		System.out.println(1234);
		dao.inputPlaceData(pVO);
	}

	@Override
	public void inputShowData(showVO sVO) {
		// TODO Auto-generated method stub
		dao.inputShowData(sVO);
	}

	@Override
	public void inputFestivalData(festivalVO fVO) {
		// TODO Auto-generated method stub
		dao.inputFestivalData(fVO);
		
	}
}
