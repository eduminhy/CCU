package com.team200.proj.controller;

import java.nio.charset.Charset;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.team200.proj.service.MeetingService;
import com.team200.proj.vo.MeetingVO;

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
		
		mav.addObject("list", service.mainMeeting());
		
		System.out.println();
		
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
	@RequestMapping(value="/meeting/writeOk", method=RequestMethod.POST)
	public ModelAndView  meetingWriteOk(MeetingVO vo, HttpServletRequest request) {
		
		
		
		HttpSession session = request.getSession();
		String user_id = (String)session.getAttribute("logId");
		vo.setUser_id(user_id);
		/*
		vo.setTitle(title);
		vo.setContent(content);
		vo.setWritedate(wirtedate);
		*/
		
		
		
		
		int cnt = service.meetingWriteOk(vo);
		System.out.print(cnt);
		ModelAndView mav = new ModelAndView();
		
		System.out.println(user_id);
		
		if(cnt>0) {
			mav.setViewName("redirect:/meeting/mainMeeting");
		}else {
			mav.setViewName("meeting/playmeetingForm");
		}
		return mav;
		
	}


}

