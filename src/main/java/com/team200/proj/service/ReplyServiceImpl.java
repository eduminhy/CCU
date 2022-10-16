package com.team200.proj.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.team200.proj.dao.ReplyDAO;
import com.team200.proj.vo.ReplyVO;

@Service
public class ReplyServiceImpl implements ReplyService {
	@Inject
	ReplyDAO dao;

	@Override
	public int replyInsert(ReplyVO vo) {
		// TODO Auto-generated method stub
		return dao.replyInsert(vo);
	}

	@Override
	public List<ReplyVO> replyList(Long board_id) {
		// TODO Auto-generated method stub
		return dao.replyList(board_id);
	}

	@Override
	public int replyEdit(ReplyVO vo) {
		// TODO Auto-generated method stub
		return dao.replyEdit(vo);
	}

	@Override
	public void replyDelete(Long id) {
		// TODO Auto-generated method stub
		dao.replyDelete(id);
	}
}
