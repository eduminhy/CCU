package com.team200.proj.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.team200.proj.service.MeetingService;

@RestController
@RequestMapping("/meeting/*")
@Controller
public class meetingController {
	@Inject
	MeetingService service;
	
	//dong
	@RequestMapping("mainMeeting")
	public ModelAndView mainMeeting() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("meeting/mainMeeting");
		return mav;
	}

	//dong
	@RequestMapping("meeting/meetingWrite")
	public String mettingWrite() {
		return "meeting/meetingWrite";
	}
			
/*	@GetMapping("mainMeeting")
	public ModelAndView mainMeeting() { // 미팅메인게시판
		ModelAndView mav = new ModelAndView();
		mav.setViewName("meeting/mainMeeting");
		return mav;
	}	
*/	
	@GetMapping("mainMeetingNotice")
	public ModelAndView mainMeetingNotice() { // 메인미팅공지
		ModelAndView mav = new ModelAndView();
		mav.setViewName("meeting/mainMeetingNotice");
		return mav;
	}
	
	@GetMapping("playMeetingList")
	public ModelAndView playMeetingList() { // 연극게시판목록
		ModelAndView mav = new ModelAndView();
		mav.setViewName("meeting/playMeetingList");
		return mav;
	}	
	
	@GetMapping("playMeetingForm")
	public ModelAndView playMeetingForm() { // 연극게시판글쓰기폼
		ModelAndView mav = new ModelAndView();
		mav.setViewName("meeting/playMeetingForm");
		return mav;
	}
	
	@GetMapping("playMeetingComment")
	public ModelAndView playMeetingComment() { // 연극게시판댓글폼
		ModelAndView mav = new ModelAndView();
		mav.setViewName("meeting/playMeetingComment");
		return mav;
	}	


}

