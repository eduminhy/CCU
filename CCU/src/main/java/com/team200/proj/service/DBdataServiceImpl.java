package com.team200.proj.service;

import java.util.List;

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

		dao.inputPlaceData(pVO);
	}

	@Override
	public void inputShowData(showVO sVO) {

		dao.inputShowData(sVO);
	}

	@Override
	public void inputFestivalData(festivalVO fVO) {
	
		dao.inputFestivalData(fVO);
		
	}

	@Override
	public void popularInputMain(showVO sVO) {
		
		dao.popularInputMain(sVO);
	}

	@Override
	public void popularWInputMain(showVO sVO) {
		dao.popularWInputMain(sVO);
		
	}

	@Override
	public void popularMInputMain(showVO sVO) {
		dao.popularMInputMain(sVO);
		
	}

	@Override
	public void popularChildInputMain(showVO sVO) {
		dao.popularChildInputMain(sVO);
		
	}




}
