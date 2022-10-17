package com.team200.proj.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.team200.proj.dao.MypageDAO;
import com.team200.proj.vo.BoardVO;
import com.team200.proj.vo.OrderlistVO;
import com.team200.proj.vo.MyBoardPageVO;
import com.team200.proj.vo.MyCommentPageVO;
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
	public int certificationOk(String imp_uid, String id) {
		return dao.certificationOk(imp_uid, id);
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
	public int snsInfoEraseOk(String id) {
		return dao.snsInfoEraseOk(id);
	}
	
	@Override
	public List<BoardVO> myBoardList(String user_id, int opr, int offp) {
		return dao.myBoardList(user_id, opr, offp);
	}

	@Override
	public int myBoardDel(BoardVO vo) {
		return dao.myBoardDel(vo);
	}

	@Override
	public List<ReplyVO> myReplyList(String user_id, int opr, int offp) {
		return dao.myReplyList(user_id, opr, offp);
	}

	@Override
	public int myCommentDel(ReplyVO vo) {
		return dao.myCommentDel(vo);
	}

	@Override
	public List<OrderlistVO> getBookInfo(String id, String searchWord, String startdate, String enddate, int opr, int offp) {
		return dao.getBookInfo(id, searchWord, startdate, enddate, opr, offp);
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
	public int totalRecord(String id) {
		return dao.totalRecord(id);
	}

	@Override
	public List<ReviewVO> getReviewInfo(String user_id, int opr, int offp) {
		return dao.getReviewInfo(user_id, opr, offp);
	}

	@Override
	public int myReviewDel(ReviewVO vo) {
		return dao.myReviewDel(vo);
	}

	@Override
	public int totalCRecord(String id) {
		return dao.totalCRecord(id);
	}

	@Override
	public int totalBookRecord(String id) {
		return dao.totalBookRecord(id);
	}

	@Override
	public int totalReviewRecord(String id) {
		return dao.totalReviewRecord(id);
	}


	

	

	

}
