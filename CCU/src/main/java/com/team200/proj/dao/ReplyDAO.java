package com.team200.proj.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.team200.proj.vo.ReplyVO;

@Mapper
@Repository
public interface ReplyDAO {
	public int replyInsert(ReplyVO vo);
	public List<ReplyVO> replyList(Long board_id);

	public int replyEdit(ReplyVO vo);

	public void replyDelete(Long id);
}
