package com.team200.proj.controller;


import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.team200.proj.service.BookService;
import com.team200.proj.vo.ScheduledateVO;
import com.team200.proj.vo.UserVO;
import com.team200.proj.vo.showVO;

@RestController
@RequestMapping("/book/*")
public class BookController {
	@Inject
	BookService service;
	
	@GetMapping("bookCheck")
	public ModelAndView bookCheck() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("book/bookCheck");
		return mav;
	}
	
	@GetMapping("bookSeat")
	public ModelAndView bookSeat(String showdb_id, String showdate, String showtime, HttpServletRequest request) {
		ScheduledateVO datevo = service.getDateInfo(showdb_id, showdate, showtime);
		String price = service.getPriceInfo(showdb_id);
		ModelAndView mav = new ModelAndView();
		mav.addObject("datevo", datevo);
		mav.addObject("price", price);
		mav.setViewName("book/bookSeat");
		return mav;
	}
	
	@GetMapping("bookCredit")
	public ModelAndView bookCredit(String showdb_id, String showdate, String showtime, HttpSession session) {
		String id = (String)session.getAttribute("logId");
		
		ScheduledateVO datevo = service.getDateInfo(showdb_id, showdate, showtime);
		showVO svo = service.getShowInfo(showdb_id, showdate, showtime);
		UserVO vo = service.getUserInfo(id);
		ModelAndView mav = new ModelAndView();
		
		
		mav.addObject("vo", vo);
		mav.addObject("datevo", datevo);
		mav.addObject("svo",svo);
		mav.setViewName("book/bookCredit");
		return mav;
	}
	
}
