package com.team200.proj.service;

import com.team200.proj.vo.UserVO;

public interface MypageService {
	public UserVO getMyinfo(String id);
	public UserVO getImgname(String id);
	public int profileUpdate(UserVO vo);
}
