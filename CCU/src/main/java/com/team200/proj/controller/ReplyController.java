package com.team200.proj.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import com.team200.proj.service.ReplyService;
import com.team200.proj.vo.ReplyVO;

@RestController
@RequestMapping("/reply/*")
public class ReplyController {
	
	@Autowired
	ReplyService service;

//	@GetMapping("replyList") //댓글리스트 //나중에 비밀댓글로 작업해야함
//	public List<ReplyVO> replyList(Long board_id) {
//		return service.replyList(board_id);
//	}
	
	@PostMapping("replyWrite") //댓글쓰는거 //나중에 비밀댓글로 작업해야함
	public int replyWrite(ReplyVO vo, HttpSession session) {
		
		vo.setUser_id((String)session.getAttribute("logId"));
		System.out.println(vo);
		return service.replyInsert(vo);
	}

	@PostMapping("replyUpdate")
	public int replyEdit(ReplyVO vo) {
		System.out.println(vo.toString());
		return service.replyEdit(vo);
	}

	@DeleteMapping("{id}")
	public void replyDelete(@PathVariable Long id) {
		service.replyDelete(id);
	}

}
