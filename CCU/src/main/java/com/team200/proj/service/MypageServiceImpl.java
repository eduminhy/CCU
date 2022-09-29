package com.team200.proj.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.team200.proj.dao.MypageDAO;
import com.team200.proj.vo.UserVO;

@Service
public class MypageServiceImpl implements MypageService {
	@Inject
	MypageDAO dao;

	@Override
	public UserVO getMyinfo(String id) {
		return dao.getMyinfo(id);
	}
	
	@Override
	public UserVO getImgname(String id) {
		return dao.getImgname(id);
	}

	@Override
	public int profileUpdate(UserVO vo) {
		return dao.profileUpdate(vo);
	}

	
	
}
