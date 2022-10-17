package com.team200.proj.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.team200.proj.vo.AdminBookPageVO;
import com.team200.proj.vo.OrderlistVO;
import com.team200.proj.vo.BoardVO;
import com.team200.proj.vo.PagingVO;
import com.team200.proj.vo.ReportVO;
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
	public int getTotalUser3(PagingVO pvo);
	public int getTotalUser4(PagingVO pvo);

	public List<UserVO> userList(PagingVO pVO);
	public List<OrderlistVO> getReservation(AdminBookPageVO apvo);
	public int totalReservation(AdminBookPageVO apvo);

	public List<BoardVO> boardList(PagingVO pVO);

	public int boardMultiDel(BoardVO vo);
	public int boardMultiDel2(UserVO vo);
	public int boardMultiDel3(ReportVO vo);
	public int boardMultiDel4(ReportVO vo);
	
	public List<BoardVO> reportList(PagingVO pVO);
	public List<BoardVO> mreportList(PagingVO pVO);

}
