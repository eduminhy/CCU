package com.team200.proj.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team200.proj.dao.IndexDAO;
import com.team200.proj.vo.AdminBookPageVO;
import com.team200.proj.vo.OrderlistVO;
import com.team200.proj.vo.BoardVO;
import com.team200.proj.vo.PagingVO;
import com.team200.proj.vo.ReportVO;
import com.team200.proj.vo.UserVO;
import com.team200.proj.vo.festivalVO;
import com.team200.proj.vo.showVO;

@Service
public class IndexServiceImpl implements IndexService {
	@Autowired
	IndexDAO dao;

	@Override
	public List<festivalVO> outputFestivalData() {
		// TODO Auto-generated method stub
		return dao.outputFestivalData();

	}

	@Override
	public List<showVO> outputpopularData() {
		// TODO Auto-generated method stub
		return dao.outputpopularData();
	}

	@Override
	public List<showVO> outputpopularWData() {
		// TODO Auto-generated method stub
		return dao.outputpopularWData();
	}

	@Override
	public List<showVO> outputpopularDWMData(int a, String b) {
		// TODO Auto-generated method stub
		return dao.outputpopularDWMData(a, b);
	}

	@Override
	public int getTotalUser(PagingVO pvo) {
		// TODO Auto-generated method stub
		return dao.getTotalUser(pvo);

	}

	@Override
	public List<UserVO> userList(PagingVO pVO) {
		// TODO Auto-generated method stub
		return dao.userList(pVO);
	}

	@Override
	public List<OrderlistVO> getReservation(AdminBookPageVO apvo) {
		return dao.getReservation(apvo);
	}

	@Override
	public int totalReservation(AdminBookPageVO apvo) {
		return dao.totalReservation(apvo);
	}

	public List<BoardVO> boardList(PagingVO pVO) {
		// TODO Auto-generated method stub
		return dao.boardList(pVO);
	}

	@Override
	public int getTotalUser2(PagingVO pvo) {
		// TODO Auto-generated method stub
		return dao.getTotalUser2(pvo);
	}

	@Override
	public int boardMultiDel(BoardVO vo) {
		// TODO Auto-generated method stub
		return dao.boardMultiDel(vo);
	}

	@Override
	public int boardMultiDel2(UserVO vo) {
		// TODO Auto-generated method stub
		return dao.boardMultiDel2(vo);
	}

	@Override
	public int getTotalUser3(PagingVO pvo) {
		// TODO Auto-generated method stub
		return dao.getTotalUser3(pvo);
	}

	@Override
	public List<BoardVO> reportList(PagingVO pVO) {
		// TODO Auto-generated method stub
		return dao.reportList(pVO);
	}
	@Override
	public List<BoardVO> mreportList(PagingVO pVO) {
		// TODO Auto-generated method stub
		return dao.mreportList(pVO);
	}

	@Override
	public int getTotalUser4(PagingVO pvo) {
		// TODO Auto-generated method stub
		return dao.getTotalUser4(pvo);
	}

	@Override
	public int boardMultiDel3(ReportVO vo) {
		// TODO Auto-generated method stub
		return dao.boardMultiDel3(vo);
	}

	@Override
	public int boardMultiDel4(ReportVO vo) {
		// TODO Auto-generated method stub
		return dao.boardMultiDel4(vo);
	}
}
