package com.team200.proj.service;

import javax.inject.Inject;


import org.springframework.stereotype.Service;

import com.team200.proj.dao.UserDAO;
import com.team200.proj.vo.UserVO;

@Service
public class UserServiceImpl implements UserService {
	@Inject
	UserDAO dao;

	@Override
	public UserVO loginOk(UserVO vo) {
		// TODO Auto-generated method stub
		return dao.loginOk(vo);
	}

	@Override
	public int signupWrite(UserVO vo) {
		// TODO Auto-generated method stub
		return dao.signupWrite(vo);
	}

	@Override
	public int idCheck(String id) {
		// TODO Auto-generated method stub
		return dao.idCheck(id);
	}
}
