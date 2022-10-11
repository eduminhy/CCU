package com.team200.proj.service;

import java.util.List;

import com.team200.proj.vo.BoardVO;
import com.team200.proj.vo.OrderlistVO;
import com.team200.proj.vo.ReplyVO;
import com.team200.proj.vo.UserVO;

public interface MypageService {
	public UserVO getMyinfo(String id);
	public String getImgname(String id);
	public int profileUpdate(UserVO vo);
	public int myInfoEraseOk(String id, String password);
	public List<BoardVO> myBoardList(String user_id);
	public int myBoardDel(BoardVO vo);
	public List<ReplyVO> myReplyList(String user_id);
	public int myCommentDel(ReplyVO vo);
	public List<OrderlistVO> getBookInfo(String id);
}
