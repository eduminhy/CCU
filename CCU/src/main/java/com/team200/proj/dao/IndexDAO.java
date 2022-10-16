package com.team200.proj.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.team200.proj.vo.BoardVO;
import com.team200.proj.vo.PagingVO;
import com.team200.proj.vo.UserVO;
import com.team200.proj.vo.festivalVO;
import com.team200.proj.vo.showVO;

@Mapper
@Repository
public interface IndexDAO {

	public List<festivalVO> outputFestivalData();
	public List<showVO> outputpopularData();
	public List<showVO> outputpopularWData();
	public List<showVO> outputpopularDWMData(int a,String b);
	public int getTotalUser(PagingVO pvo);
	public int getTotalUser2(PagingVO pvo);
	public List<UserVO> userList(PagingVO pVO);
	public List<BoardVO> boardList(PagingVO pVO);

	public int boardMultiDel(BoardVO vo);
	public int boardMultiDel2(UserVO vo);
	
}
