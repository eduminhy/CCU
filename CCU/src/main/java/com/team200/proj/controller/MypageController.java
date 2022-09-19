package com.team200.proj.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping("/mypage/*")
public class MypageController {
	
	@GetMapping("myInfo")
	public ModelAndView myInfo() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("mypage/myInfo");
		return mav;
	}
	//나의 정보 수정 페이지
	@GetMapping("myInfoModify")
	public ModelAndView myInfoModify() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("mypage/myInfoModify");
		return mav;
	}
	
	//2. 나의 예매내역
	@GetMapping("myReservation")
	public ModelAndView myReservation() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("mypage/myReservation");
		return mav;
	}
	
	//3. 나의 찜 목록 페이지
	@GetMapping("myHeartList")
	public ModelAndView myHeartList() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("mypage/myHeartList");
		return mav;
	}
	
	//4. 나의 게시글 페이지
	@GetMapping("myBoard")
	public ModelAndView myBoard() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("mypage/myBoard");
		return mav;
	}
	
	//5. 나의 댓글 페이지
	@GetMapping("myComment")
	public ModelAndView myComment() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("mypage/myComment");
		return mav;
	}
	
	//6. 나의 문의 페이지
	@GetMapping("myQna")
	public ModelAndView myQna() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("mypage/myQna");
		return mav;
	}
}
