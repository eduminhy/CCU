package com.team200.proj.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.team200.proj.service.PreferService;

@RestController
@RequestMapping("/preferGenrePage/*")
public class preferController {
	@Inject
	PreferService service;
	
	@GetMapping("preferGenre")
	public ModelAndView preferGenre() {
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("showlist", service.getInfo());
		
		mav.setViewName("preferGenrePage/preferGenre");
		return mav;
	}

}
