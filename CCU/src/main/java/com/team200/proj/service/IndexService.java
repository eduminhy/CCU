package com.team200.proj.service;

import java.util.List;

import com.team200.proj.vo.BoardVO;
import com.team200.proj.vo.PagingVO;
import com.team200.proj.vo.UserVO;
import com.team200.proj.vo.festivalVO;
import com.team200.proj.vo.showVO;


public interface IndexService {
	public List<festivalVO> outputFestivalData();
	public List<showVO> outputpopularData();
	public List<showVO> outputpopularWData();
	public List<showVO> outputpopularDWMData(int a,String b);
	public int getTotalUser(PagingVO pvo);
	public int getTotalUser2(PagingVO pvo);
	public int getTotalUser3(PagingVO pvo);
	public int getTotalUser4(PagingVO pvo);

	public List<UserVO> userList(PagingVO pVO);
	public List<BoardVO> boardList(PagingVO pVO);
	public int boardMultiDel(BoardVO vo);
	public int boardMultiDel2(UserVO vo);
	public List<BoardVO> reportList(PagingVO pVO);
	public List<BoardVO> mreportList(PagingVO pVO);
}
