package com.team200.proj.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping("/book/*")
public class BookController {
	@GetMapping("bookCheck")
	public ModelAndView bookCheck() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("book/bookCheck");
		return mav;
	}
	
	@GetMapping("bookSeat")
	public ModelAndView bookSeat() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("book/bookSeat");
		return mav;
	}
	
	@GetMapping("bookCredit")
	public ModelAndView bookCredit() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("book/bookCredit");
		return mav;
	}
	
}
