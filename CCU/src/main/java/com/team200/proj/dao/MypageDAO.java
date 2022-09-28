package com.team200.proj.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.team200.proj.vo.UserVO;

@Mapper
@Repository
public interface MypageDAO {
	public UserVO getMyinfo(String id);//나의 정보 가져오기
	public UserVO getImgname(String id);//프로필 이미지 가져오기
	public int profileUpdate(UserVO vo);//프로필 이미지 수정하기
}
