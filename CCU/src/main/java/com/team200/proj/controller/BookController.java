package com.team200.proj.controller;


import javax.inject.Inject;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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

	@PostMapping("bookSeat")
	public ModelAndView bookSeat(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
//
//		System.out.println(request.getParameter("Sdate"));
//		System.out.println(Sdate);
//		System.out.println(Sdate2);
//		System.out.println(userD);
		String[] ArraysStr = request.getParameter("price").split("원,");
		String arr = ArraysStr[ArraysStr.length-1];
//		System.out.println(arr);
//		System.out.println(request.getParameter("price"));
//		System.out.println(request.getParameter("price").split("원")[ArraysStr.length-1]);
//		System.out.println(request.getParameter("price").split("원")[ArraysStr.length-1]);

		//		System.out.println(aa.split(" ")[0]);aa.split(" ")[0]
		mav.addObject("day", request.getParameter("Sdate"));
		mav.addObject("date", request.getParameter("Sdate2"));
		mav.addObject("time", request.getParameter("userD"));
		mav.addObject("price",arr);
		mav.addObject("id", request.getParameter("id"));
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
