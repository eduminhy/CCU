package com.team200.proj.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.team200.proj.dao.IndexDAO;
import com.team200.proj.vo.festivalVO;
import com.team200.proj.vo.showVO;


@Service
public class IndexServiceImpl implements IndexService {
	@Autowired
	IndexDAO dao;

	@Override
	public List<festivalVO> outputFestivalData() {
		// TODO Auto-generated method stub
		return dao.outputFestivalData(); 
		
	}

	@Override
	public List<showVO> outputpopularData() {
		// TODO Auto-generated method stub
		return dao.outputpopularData();
	}

	@Override
	public List<showVO> outputpopularWData() {
		// TODO Auto-generated method stub
		return dao.outputpopularWData();
	}


	@Override
	public List<showVO> outputpopularDWMData(int a, String b) {
		// TODO Auto-generated method stub
		return dao.outputpopularDWMData(a,b);
	}



	
}
