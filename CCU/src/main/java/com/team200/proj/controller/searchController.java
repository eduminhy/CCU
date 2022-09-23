package com.team200.proj.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping("/searchPage/*")
public class searchController {
	@GetMapping("/searchResult")
	public ModelAndView searchResult() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("searchPage/searchResult");
		return mav;
	}
	

}



