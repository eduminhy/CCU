package com.team200.proj.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.team200.proj.dao.PreferDAO;
import com.team200.proj.vo.showVO;

@Service
public class PreferServiceImpl implements PreferService {
	@Inject
	PreferDAO dao;

	@Override
	public List<showVO> getInfo() {
		return dao.getInfo();
	}

	
	
	
}
