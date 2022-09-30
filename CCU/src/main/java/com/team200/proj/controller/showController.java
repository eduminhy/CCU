package com.team200.proj.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping("/show/*")
public class showController {
	@GetMapping("showList")
	public ModelAndView showList() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("show/showList");
		return mav;
	}
	
	@GetMapping("showDetail")
	public ModelAndView showDetail() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("show/showDetail");
		return mav;
	}
	
}

