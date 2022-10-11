package com.team200.proj.controller;


import java.nio.charset.Charset;
import java.util.List;

import javax.inject.Inject;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;


import com.team200.proj.service.BookService;
import com.team200.proj.vo.ScheduledateVO;
import com.team200.proj.vo.SeatVO;
import com.team200.proj.vo.UserVO;
import com.team200.proj.vo.showVO;


@RestController
@RequestMapping("/book/*")
public class BookController {
	@Inject
	BookService service;
	
	@GetMapping("bookCheck")
	public ModelAndView bookCheck(String scheduleDate_id) {
		ScheduledateVO sdvo = service.getScheduleInfo(scheduleDate_id);
		ModelAndView mav = new ModelAndView();
		mav.addObject("sdvo", sdvo);
		mav.setViewName("book/bookCheck");
		return mav;
	}
	
	@PostMapping("bookSeat")
	public ModelAndView bookSeat(HttpServletRequest request, String scheduleDate_id) {
		ModelAndView mav = new ModelAndView();
		ScheduledateVO vo = service.getScheduleInfo(scheduleDate_id);
		List<SeatVO> statelist = service.getSeatState(scheduleDate_id);
		mav.addObject("vo",vo);
		mav.addObject("statelist", statelist);

		String[] ArraysStr = request.getParameter("price").split("원,");
		String arr = ArraysStr[ArraysStr.length-1];

		mav.addObject("day", request.getParameter("Sdate"));
		mav.addObject("date", request.getParameter("Sdate2"));
		mav.addObject("time", request.getParameter("userD"));
		mav.addObject("price",arr);
		mav.addObject("id", request.getParameter("id"));
		mav.setViewName("book/bookSeat");
		
		return mav;
	}
	
	@PostMapping("bookSeatOk")
	public ResponseEntity<String> bookSeatOk(SeatVO vo, HttpServletRequest request){
		//vo.setId((String)request.getSession().getAttribute("logId"));
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(new MediaType("text", "html", Charset.forName("UTF-8")));
		headers.add("Content-Type", "text/html; charset=UTF-8");
		
		String msg = "<script>";
		try {
			System.out.println("schedule_id=>"+vo.getScheduleDate_id());
			//String seatNum[] = request.getParameterValues("seatNum");
			//System.out.println("seatNum=>"+seatNum[0]);
			System.out.println("scheduleDate_id=>"+request.getParameter("scheduleDate_id"));
			service.bookSeatOk(vo);
			msg += "alert('좌석이 선택되었습니다. 결제페이지로 이동합니다.');";
			msg += "";
			msg += "location.href='bookCredit?scheduleDate_id="+vo.getScheduleDate_id()+"';";
		}catch(Exception e) {
			msg += "alert('좌석등록에 실패하였습니다.');";
			msg += "history.go(-1);";
		}
		msg += "</script>";
		
		ResponseEntity<String> entity = new ResponseEntity<String>(msg, headers, HttpStatus.OK);
		return entity;
	}
	
	
	@GetMapping("bookCredit") 
	public ModelAndView bookCredit(HttpSession session, HttpServletRequest request, String scheduleDate_id) { 
		String userid = (String)session.getAttribute("logId"); 
		UserVO vo = service.getUserInfo(userid);
		ScheduledateVO sdvo = service.getScheduleInfo(scheduleDate_id);
		showVO shvo = service.getShowInfo(scheduleDate_id);
		List<SeatVO> svo = service.getSeatNum(scheduleDate_id);
		ModelAndView mav = new ModelAndView(); 
		mav.addObject("vo", vo);
		mav.addObject("sdvo", sdvo);
		mav.addObject("shvo", shvo);
		mav.addObject("svo", svo);
		mav.setViewName("book/bookCredit"); 
		return mav; 
	}
	
	/*@PostMapping("bookCreditOk")
	public ResponseEntity<String> bookCreditOk(HttpSession session, HttpServletRequest request){
		String id = (String)session.getAttribute("logId");
		//String impnum = request.getParameter("rsp.imp_uid");
		//String 
		System.out.println("id=>"+id);
		//System.out.println("impnum=>"+impnum);
		
		ResponseEntity<String> entity = null;
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(new MediaType("text", "html", Charset.forName("UTF-8")));
		headers.add("Content-Type", "text/html; charset=UTF-8");
		
		try {
			
		}catch(Exception e) {
			
		}
		
		return entity;
	}*/
	
	@PostMapping("bookCreditOk")
	public ResponseEntity<String> bookCreditOk(@RequestParam("email") String email,
											   @RequestParam("name") String name,
											   @RequestParam("addr") String addr,
											   @RequestParam("tel") String tel,
											   @RequestParam("shipno") String shipno, 
											   @RequestParam("paidAmount") String paidAmount,
											   @RequestParam("applyNum") String applyNum,
											   SeatVO vo, HttpSession session, HttpServletRequest request
											   ) {
		System.out.println("shipno=>"+shipno);
		System.out.println("paidAmount=>"+paidAmount);
		
		String id = (String)session.getAttribute("logId");
		
		ResponseEntity<String> entity = null;
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(new MediaType("text", "html", Charset.forName("UTF-8")));
		headers.add("Content-Type", "text/html; charset=UTF-8");
		
		String msg="<script>";
		try {
			System.out.println("좌석상태 변경전...");
			service.bookSeatComplete(vo);
			msg += "alert('결제가 완료되었습니다.');";
			msg += "location.href='bookCheck?scheduleDate_id="+vo.getScheduleDate_id()+"';";
		}catch(Exception e) {
			msg += "alert('결제실패하였습니다.');";
			msg += "history.go(-1);";
		}
		msg += "</script>";
		entity = new ResponseEntity<String>(msg, headers, HttpStatus.OK);
		return entity;
	}
	 
	
}
