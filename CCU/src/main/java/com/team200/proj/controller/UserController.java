package com.team200.proj.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.team200.proj.service.UserService;
import com.team200.proj.vo.UserVO;

@RestController
@RequestMapping("/user/*")
public class UserController {
	
	@Inject
	UserService service;
	//회원가입 페이지
	@GetMapping("signup") 
	public ModelAndView signup() {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user/signup");
		return mav;
		
	}
	//로그인 페이지
	@GetMapping("login") 
	public ModelAndView login() {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user/login");
		return mav;
	}
	//로그인 성공 실패
	@PostMapping("loginOk")
	public ModelAndView loginOk(UserVO vo, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		
		UserVO logVO = service.loginOk(vo);
		
		if(logVO != null) {
			session.setAttribute("logId", logVO.getId());
			session.setAttribute("logName", logVO.getUsername());
			session.setAttribute("logStatus", "Y");
			mav.setViewName("redirect:/");
		}else {
			mav.setViewName("redirect:login");
		}
		return mav;
	}
	//로그아웃
	@GetMapping("logout")
	public ModelAndView logout(HttpSession session) {
		session.invalidate(); 
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/");
		return mav;
	}
	
}
