package com.team200.proj.service;

import java.util.List;

import com.team200.proj.vo.ReplyVO;

public interface ReplyService {
	public int replyInsert(ReplyVO vo);
	public List<ReplyVO> replyList(Long board_id);
	public int replyEdit(ReplyVO vo);
	public void replyDelete(Long id);
}
