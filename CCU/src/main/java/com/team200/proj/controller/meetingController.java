package com.team200.proj.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.team200.proj.service.ReplyService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import com.team200.proj.service.MeetingService;
import com.team200.proj.vo.MeetingVO;

@RestController
@RequestMapping("/meeting/*")
@Controller
public class meetingController {

	@Inject
	MeetingService service;

	@Inject
	ReplyService replyService;
	
	//같이갈래요 list
	@RequestMapping(value = "mainMeeting", method = RequestMethod.GET)
	public ModelAndView mainMeeting(@RequestParam(required = false) String title) {
		ModelAndView mav = new ModelAndView();

		if (title == null) {
			mav.addObject("list", service.mainMeeting());
		} else {
			mav.addObject("list", service.searchByTitle(title));
		}

		mav.setViewName("meeting/mainMeeting");
		return mav;
	}

	// --------------------------------------------------------------------------------

	//	mainMeeting?genre=연극
	@RequestMapping(value = "mainMeeting/{genre}", method = RequestMethod.GET)
	public ModelAndView meetingFindGenre(@PathVariable String genre) {
		ModelAndView mav = new ModelAndView();

		mav.addObject("list", service.mainMeetingGenre(genre));

		mav.setViewName("meeting/mainMeeting");
		return mav;
	}

	@RequestMapping(value = "mainMeeting2/{genre1}&{genre2}", method = RequestMethod.GET)
	public ModelAndView meetingFindGenre(@PathVariable String genre1, @PathVariable String genre2) {
		ModelAndView mav = new ModelAndView();

		

		mav.addObject("list", service.mainMeetingGenre2(genre1, genre2));

		mav.setViewName("meeting/mainMeeting");
		return mav;
	}

	// --------------------------------------------------------------------------------

	@RequestMapping("playMeetingList")
	public ModelAndView playMeetingList1() {
		ModelAndView mav = new ModelAndView();

		mav.addObject("list", service.playMeetingList());

		System.out.println();

		mav.setViewName("meeting/playMeetingList");
		return mav;
	}

	// ---------------------------------------------------------------------------------
	@RequestMapping(value = "meetingDelete/{id}", method = RequestMethod.GET)
	public ModelAndView meetingDelete(@PathVariable Long id) {
		service.meetingDelete(id);

		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/meeting/mainMeeting");

		return mav;
	}

// ------------------------------------------------------------------------
	@GetMapping("/showModal")
	public ModelAndView GotoShowModalAll() {
		ModelAndView mav = new ModelAndView();

		mav.addObject("showList", service.showModalAll());

		mav.setViewName("meeting/showModal");
		return mav;
	}

	@GetMapping("/showModal/{name}")
	public ModelAndView GotoShowModal(@PathVariable String name) {
		ModelAndView mav = new ModelAndView();

		mav.addObject("showList", service.showModal(name));

		mav.setViewName("meeting/showModal");
		return mav;
	}
// ----------------------------------------------------------------------------

	@GetMapping("view/{id}")
	public ModelAndView GotoMeetingView(@PathVariable Long id, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();


		HttpSession session = request.getSession();
		String user_id = (String) session.getAttribute("logId");

		mav.addObject("meetingView", service.meetingView(id));
		mav.addObject("reply", replyService.replyList(id));
		mav.addObject("user", user_id);

		mav.setViewName("meeting/meetingDetailView");
		return mav;
	}

// ----------------------------------------------------------------------------

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

	@RequestMapping(value = "meeting/meetingWrite", method = RequestMethod.POST)
	public ModelAndView mettingWrite(MeetingVO vo, HttpServletRequest request) {
		HttpSession session = request.getSession();
		String user_id = (String) session.getAttribute("logId");
		vo.setUser_id(user_id);

		System.out.println("voString : " + vo);

		Long id = vo.getId();

		System.out.println("id : " + id);

		int cnt;
		if (service.mainMeetingGet(id) == null) {
			cnt = service.meetingWriteOk(vo);
		} else {
			cnt = service.meetingEdit(vo);
		}

		ModelAndView mav = new ModelAndView();

		if (cnt > 0) {
			mav.setViewName("redirect:/meeting/mainMeeting");
		} else {
			mav.setViewName("meeting/playmeetingForm");
		}
		return mav;
	}

	@RequestMapping(value = "meetingEdit/{id}", method = RequestMethod.GET)
	public ModelAndView meetingEdit(@PathVariable Long id) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("board", service.meetingView(id));

		mav.setViewName("meeting/playMeetingForm");
		return mav;
	}

	@RequestMapping(value = "meetingEdit", method = RequestMethod.PUT)
	public ModelAndView meetingEdit(MeetingVO vo) {
		int cnt = service.meetingEdit(vo);

		ModelAndView mav = new ModelAndView();

		if (cnt > 0) {
			mav.setViewName("redirect:/meeting/mainMeeting");
		} else {
			mav.setViewName("meeting/playmeetingForm");
		}
		return mav;
	}

}

