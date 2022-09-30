package com.team200.proj.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.team200.proj.dao.ShowDAO;
import com.team200.proj.vo.showVO;

@Service
public class ShowServiceImpl implements ShowService {
	@Inject
	ShowDAO dao;

	@Override
	public List<showVO> getShowList(String genre) {
		return dao.getShowList(genre);
	}

	@Override
	public int getShowNum() {
		return dao.getShowNum();
	}

	@Override
	public List<String> getShowGenre() {
		return dao.getShowGenre();
	}

	
}
