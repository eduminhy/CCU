package com.team200.proj.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.team200.proj.vo.BoardVO;
import com.team200.proj.vo.OrderlistVO;
import com.team200.proj.vo.PageVO;
import com.team200.proj.vo.ReplyVO;
import com.team200.proj.vo.ReviewVO;
import com.team200.proj.vo.UserVO;
import com.team200.proj.vo.showVO;

@Mapper
@Repository
public interface MypageDAO {
	public UserVO getMyinfo(String id);//나의 정보 가져오기
	public String getImgname(String id);//프로필 이미지 가져오기
	public int profileUpdate(UserVO vo);//프로필 이미지 수정하기
	public int myInfoEraseOk(String id, String password);//회원탈퇴하기
	public List<BoardVO> myBoardList(String user_id);//나의 게시글 가져오기
	public int myBoardDel(BoardVO vo);//게시글 여러개 삭제
	public List<ReplyVO> myReplyList(String user_id);//나의 댓글 가져오기
	public int myCommentDel(ReplyVO vo);//댓글 여러개 삭제
	public List<OrderlistVO> getBookInfo(String id, String searchWord, String startdate, String enddate);//예약내역 가져오기
	
	public List<showVO> getMyFav(String user_id);//찜목록 가져오기
	public int delMyFav(String user_id, String showdb_id);//찜목록 삭제하기
	public List<ReviewVO> reviewOk(String user_id);//후기에 주문내역 확인
	public List<ReviewVO> getReviewInfo(String user_id);//나의 후기 가져오기
	public int myReviewDel(ReviewVO vo);//나의 후기 삭제하기
	public int totalRecord(PageVO pvo);
}
