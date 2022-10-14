package com.team200.proj.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.team200.proj.dao.MypageDAO;
import com.team200.proj.vo.BoardVO;
import com.team200.proj.vo.OrderlistVO;
import com.team200.proj.vo.PageVO;
import com.team200.proj.vo.ReplyVO;
import com.team200.proj.vo.ReviewVO;
import com.team200.proj.vo.UserVO;
import com.team200.proj.vo.showVO;

@Service
public class MypageServiceImpl implements MypageService {
	@Inject
	MypageDAO dao;

	@Override
	public UserVO getMyinfo(String id) {
		return dao.getMyinfo(id);
	}
	
	@Override
	public String getImgname(String id) {
		return dao.getImgname(id);
	}

	@Override
	public int profileUpdate(UserVO vo) {
		return dao.profileUpdate(vo);
	}

	@Override
	public int myInfoEraseOk(String id, String password) {
		return dao.myInfoEraseOk(id, password);
	}
	
	@Override
	public List<BoardVO> myBoardList(String user_id) {
		return dao.myBoardList(user_id);
	}

	@Override
	public int myBoardDel(BoardVO vo) {
		return dao.myBoardDel(vo);
	}

	@Override
	public List<ReplyVO> myReplyList(String user_id) {
		return dao.myReplyList(user_id);
	}

	@Override
	public int myCommentDel(ReplyVO vo) {
		return dao.myCommentDel(vo);
	}

	@Override
	public List<OrderlistVO> getBookInfo(String id, String searchWord, String startdate, String enddate) {
		return dao.getBookInfo(id, searchWord, startdate, enddate);
	}

	@Override
	public List<showVO> getMyFav(String user_id) {
		return dao.getMyFav(user_id);
	}

	@Override
	public int delMyFav(String user_id, String showdb_id) {
		return dao.delMyFav(user_id, showdb_id);
	}

	@Override
	public List<ReviewVO> reviewOk(String user_id) {
		return dao.reviewOk(user_id);
	}
	
	@Override
	public int totalRecord(PageVO pvo) {
		return dao.totalRecord(pvo);
	}

	@Override
	public List<ReviewVO> getReviewInfo(String user_id) {
		return dao.getReviewInfo(user_id);
	}

	@Override
	public int myReviewDel(ReviewVO vo) {
		return dao.myReviewDel(vo);
	}

	

	

}
