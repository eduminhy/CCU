package com.team200.proj.controller;



import javax.inject.Inject;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.team200.proj.service.AdminService;

@RestController
@RequestMapping("/adminPage/*")
public class AdminController {
	@Inject
	AdminService service;
	
	@GetMapping("prefer")
	public ModelAndView prefer() {
		ModelAndView mav = new ModelAndView();
			
		mav.setViewName("adminPage/prefer");
		return mav;
	}
}
