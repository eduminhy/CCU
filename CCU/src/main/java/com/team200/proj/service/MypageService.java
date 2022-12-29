package com.team200.proj.service;

import java.util.List;

import com.team200.proj.vo.BoardVO;
import com.team200.proj.vo.OrderlistVO;
import com.team200.proj.vo.ReplyVO;
import com.team200.proj.vo.ReviewVO;
import com.team200.proj.vo.UserVO;
import com.team200.proj.vo.showVO;

public interface MypageService {
	public UserVO getMyinfo(String id);
	public int certificationOk(String imp_uid, String id);
	public String getImgname(String id);
	public int profileUpdate(UserVO vo);
	public int myInfoEraseOk(String id, String password);
	public int snsInfoEraseOk(String id);
	public List<BoardVO> myBoardList(String user_id, int opr, int offp);
	public int myBoardDel(BoardVO vo);
	public List<ReplyVO> myReplyList(String user_id, int opr, int offp);
	public int myCommentDel(ReplyVO vo);
	public List<OrderlistVO> getBookInfo(String id, String searchWord, String startdate, String enddate, int opr, int offp);
	public List<showVO> getMyFav(String user_id);
	public int delMyFav(String user_id, String showdb_id);
	public List<ReviewVO> reviewOk(String user_id);
	public List<ReviewVO> getReviewInfo(String user_id, int opr, int offp);
	public int myReviewDel(ReviewVO vo);
	public int totalRecord(String id);
	public int totalCRecord(String id);
	public int totalBookRecord(String id);
	public int totalReviewRecord(String id);
}
