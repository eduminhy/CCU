package com.team200.proj.service;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



import com.team200.proj.dao.ShowDAO;
import com.team200.proj.vo.showVO;


@Service
public class ShowServiceImpl implements ShowService {
	@Autowired
	ShowDAO dao;

	@Override
	public showVO showDetail(String show_id) {
		// TODO Auto-generated method stub
		return dao.showDetail(show_id);
	}





	
}
