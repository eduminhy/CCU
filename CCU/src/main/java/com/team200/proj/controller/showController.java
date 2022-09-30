package com.team200.proj.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.team200.proj.service.DBdataService;
import com.team200.proj.service.ShowService;
import com.team200.proj.vo.UserVO;
import com.team200.proj.vo.showVO;

@RestController
@RequestMapping("/show/*")
public class showController {
	@Inject
	ShowService service;
	
	@GetMapping("showList")
	public ModelAndView showList() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("show/showList");
		return mav;
	}
//	
//	HttpSession session) {
//		ModelAndView mav = new ModelAndView();
//		
//		UserVO logVO = service.loginOk(vo);
//		
//		if(logVO != null) {
//			session.setAttribute("logId", logVO.getId());
	//http://localhost:8020/show/showDetail?show_id=1234
	@GetMapping("showDetail")
	public ModelAndView showDetail(String show_id, HttpSession session) {

//	showVO abc = service.showDetail(show_id);
//	System.out.println(abc.getStartdate().replaceAll("[^0-9]",""));
//	System.out.println(abc.getEnddate().replaceAll("[^0-9]",""));
//	String a = abc.getStartdate().replaceAll("[^0-9]","");
//	String b = abc.getEnddate().replaceAll("[^0-9]","");

		System.out.println(service.showDetail(show_id));
		ModelAndView mav = new ModelAndView();
		mav.addObject("show",service.showDetail(show_id));
		mav.addObject("sd",service.showDetail(show_id).getStartdate().replaceAll("[^0-9]",""));
		mav.addObject("ed",service.showDetail(show_id).getEnddate().replaceAll("[^0-9]",""));
		mav.setViewName("show/showDetail");
		return mav;
	}
}	

