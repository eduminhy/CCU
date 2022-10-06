package com.team200.proj.controller;

import java.util.ArrayList;
import java.util.Arrays;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import retrofit2.http.POST;

@RestController
@RequestMapping("/book/*")
public class BookController {
	@GetMapping("bookCheck")
	public ModelAndView bookCheck() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("book/bookCheck");
		return mav;
	}
	
	@PostMapping("bookSeat")
	public ModelAndView bookSeat(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
//
//		System.out.println(request.getParameter("Sdate"));
//		System.out.println(Sdate);
//		System.out.println(Sdate2);
//		System.out.println(userD);
		String[] ArraysStr = request.getParameter("price").split("원,");
		String arr = ArraysStr[ArraysStr.length-1];
//		System.out.println(arr);
//		System.out.println(request.getParameter("price"));
//		System.out.println(request.getParameter("price").split("원")[ArraysStr.length-1]);
//		System.out.println(request.getParameter("price").split("원")[ArraysStr.length-1]);

		//		System.out.println(aa.split(" ")[0]);aa.split(" ")[0]
		mav.addObject("day", request.getParameter("Sdate"));
		mav.addObject("date", request.getParameter("Sdate2"));
		mav.addObject("time", request.getParameter("userD"));
		mav.addObject("price",arr);
		mav.addObject("id", request.getParameter("id"));
		mav.setViewName("book/bookSeat");
		return mav;
	}
	
	@GetMapping("bookCredit")
	public ModelAndView bookCredit() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("book/bookCredit");
		return mav;
	}
	
}
