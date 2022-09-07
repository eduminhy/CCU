package com.team200.proj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class meetingController {
	@RequestMapping("mainMeetingNotice")
	public String meetingNotice() { // 메인미팅공지
		return "meeting/mainMeetingNotice";
	}
	
	@RequestMapping("/playMeetingList")
	public String playMeetingListMain() { // 연극게시판목록
		return "meeting/playMeetingList";
	}
	
	@RequestMapping("/playMeetingForm")
	public String playMeetingForm() {// 연극게시판글쓰기폼
		return "meeting/playMeetingForm";
	}
	
	@RequestMapping("/playMeetingComment")
	public String playMeetingComment() {// 연극게시판댓글폼
		return "meeting/playMeetingComment";
	}
	


}

