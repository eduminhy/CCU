package com.team200.proj.controller;

import java.util.ArrayList;
import java.util.List;


import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import org.springframework.web.servlet.ModelAndView;

import com.team200.proj.service.MeetingService;
import com.team200.proj.vo.MeetingVO;
import com.team200.proj.vo.showVO;

@Slf4j
@RestController
@RequestMapping("/meeting/*")
@Controller
public class meetingController {
	@Inject
	MeetingService service;
	
	

	@RequestMapping(value = "mainMeeting", method = RequestMethod.GET)
	public ModelAndView mainMeeting() {
		ModelAndView mav = new ModelAndView();

		mav.addObject("list", service.mainMeeting());

		mav.setViewName("meeting/mainMeeting");
		return mav;
	}



	@RequestMapping("playMeetingList")
	public ModelAndView playMeetingList1() {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("list", service.playMeetingList());
		
		System.out.println();
		
		mav.setViewName("meeting/playMeetingList");
		return mav;
	}
	
	/*
	@GetMapping("playMeetingList")
	public ModelAndView playMeetingList() { // 연극게시판목록
		ModelAndView mav = new ModelAndView();
		mav.setViewName("meeting/playMeetingList");
		return mav;
	}	
	*/


	@RequestMapping(value = "meeting/meetingDelete/{id}", method = RequestMethod.DELETE)
	public ModelAndView mettingDelete(@RequestParam Long id, HttpServletRequest request) {
		HttpSession session = request.getSession();
		String user_id = (String) session.getAttribute("logId");

		service.meetingDelete(id, user_id);

		ModelAndView mav = new ModelAndView();

		mav.setViewName("redirect:/meeting/mainMeeting");

		return mav;
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

