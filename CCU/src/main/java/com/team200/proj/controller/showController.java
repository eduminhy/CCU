package com.team200.proj.controller;




import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.team200.proj.service.ShowService;


@RestController
@RequestMapping("/show/*")
public class showController {
	@Autowired
	ShowService service;
	
	@GetMapping("showList")
	public ModelAndView showList(String genre) {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("genre", genre);
		mav.addObject("showlist", service.getShowList(genre));
		mav.addObject("weeklylist", service.WeeklyRankingList(genre));
		mav.addObject("newlist", service.getNewList(genre));
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

