package com.team200.proj.service;

import com.team200.proj.vo.UserVO;

public interface UserService {
	public UserVO loginOk(UserVO vo);
	public int idCheck(String id);
	public int signupWrite(UserVO vo);
	
}
