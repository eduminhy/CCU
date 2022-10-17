package com.team200.proj.controller;



import java.nio.charset.Charset;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;


import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
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
	/*
	@GetMapping("agreements") 
	public ModelAndView agreements() {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user/agreements");
		return mav;
	} 
	*/
	@GetMapping("idCheck") 
	//아이디 중복검사
	public ModelAndView idCheck(String id) {
		
		ModelAndView mav = new ModelAndView();
		
		// DB 조회 : 아이디가 존재하는지 확인
		int cnt = service.idCheck(id);
		
		mav.addObject("idCnt", cnt);
		mav.addObject("id", id);
		
		mav.setViewName("user/idCheck");
		return mav;
		
	}
	
	@PostMapping("signupWrite")
	public ResponseEntity<String> signupWrite(UserVO vo) {
		 
		System.out.println(vo.toString());
		
		// RestController에서는 ResponseBody를 보낼 수 있다.
		// client에게 data와 view file을 담을 수 있는 객체이며, view page를 별도로 만들 필요가 없음.
		
		ResponseEntity<String> entity = null;
		HttpHeaders headers = new HttpHeaders();

		headers.setContentType(new MediaType("text", "html", Charset.forName("UTF-8")));
		headers.add("Content-Type", "text/html; charset=UTF-8");
		
		try{ // 회원등록 -> login form으로 이동
			
			int result = service.signupWrite(vo);
			String msg = "<script>";
			msg += "alert('회원가입 성공');";
			msg += "location.href='/user/login'";
			msg += "</script>";
			
			entity = new ResponseEntity<String>(msg, headers, HttpStatus.OK);
		} catch(Exception e) { // 실패 -> 이전페이지(history : 자바스크립트)
			String msg = "<script>";
			msg += "alert('회원가입 실패');";
			msg += "history.back()";
			msg += "</script>";
			
			entity = new ResponseEntity<String>(msg, headers, HttpStatus.BAD_REQUEST);
			
			e.printStackTrace();
		}
		
		return entity;
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
			session.setAttribute("logRole", logVO.getRole());
			mav.setViewName("redirect:/");
		}else {
			mav.setViewName("redirect:login");
		}
		return mav;
	}
	//로그아웃


	@GetMapping("logout") // 

	public ModelAndView logout(HttpSession session) {
		session.invalidate(); 
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/");
		return mav;
	}
	
}
