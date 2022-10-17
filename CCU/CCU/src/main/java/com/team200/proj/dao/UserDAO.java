package com.team200.proj.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.team200.proj.vo.UserVO;

@Mapper
@Repository
public interface UserDAO {

	//로그인
	public UserVO loginOk(UserVO vo);

	public UserVO findByEmail(String email);

	//회원가입 signup
	public int signupWrite(UserVO vo);
	//아이디 중복검사
	public int idCheck(String id);
	
}