package com.team200.proj.controller;

import javax.inject.Inject;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.team200.proj.service.UserService;

@RestController
@RequestMapping("/member/*")
public class UserController {
	
	@Inject
	UserService service;
	
	@GetMapping("signup")
	public ModelAndView signup() {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("member/signup");
		return mav;
		
	}
	@GetMapping("login")
	public ModelAndView login() {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("member/login");
		return mav;
	}
}
