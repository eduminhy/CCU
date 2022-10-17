package com.team200.proj.controller;


import java.util.List;

import javax.inject.Inject;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.team200.proj.service.BookService;
import com.team200.proj.vo.BookVO;
import com.team200.proj.vo.OrderlistVO;
import com.team200.proj.vo.ScheduledateVO;
import com.team200.proj.vo.SeatVO;
import com.team200.proj.vo.StateVO;
import com.team200.proj.vo.UserVO;


@RestController
@RequestMapping("/book/*")
public class BookController {
	@Inject
	BookService service;
	
	@PostMapping("scheduleOk")
	public ModelAndView scheduleOk(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		
		String showdb_id = request.getParameter("id"); 
		String showdate = request.getParameter("Sdate2")+"("+request.getParameter("Sdate")+")";
		String showtime = request.getParameter("userD");
		String[] ArraysStr = request.getParameter("price").split("원,");
		String arr = ArraysStr[ArraysStr.length-1];//S석 55,000원
		int a = arr.indexOf("석");
		int b = arr.indexOf("원");
		int c = arr.indexOf(",");
		String price1 = arr.substring(a+2,c);//String 60
		String price2 = arr.substring(c+1, b);//String 000
		int price = Integer.parseInt(price1+price2);//60000

		//System.out.println("a=>"+a+"b=>"+b+"c=>"+c);
		//System.out.println("day=>"+request.getParameter("Sdate"));//목
		//System.out.println("date=>"+request.getParameter("Sdate2"));//2022-10-27
		//System.out.println("time=>"+showtime);//18:00
		//System.out.println("showdate=>"+showdate);//2022-10-27(목)
		//System.out.println("arr=>"+arr);
		//System.out.println("price=>"+price);
		//System.out.println("id=>"+showdb_id);
		
		List<ScheduledateVO> scheduleList = service.getSchedule(showdb_id, showdate, showtime);

		int result = 0;//있는 공연인지 확인하는 결과값
		String scheduleDate_id = "";
		for(int i=0;i<scheduleList.size();i++) {
			ScheduledateVO schvo = scheduleList.get(i);
			String db_showid = schvo.getShowdb_id();
			String db_showdate = schvo.getShowDate();
			String db_showtime = schvo.getShowTime();
			
			//System.out.println(db_showid);
			//System.out.println(db_showdate);
			//System.out.println(db_showtime);
			
			if(db_showid.equals(showdb_id)&&db_showdate.equals(showdate)&&db_showtime.equals(showtime)) {
				//동일한 공연아이디일 때
				result = 1;
				scheduleDate_id=schvo.getId();
				System.out.println(scheduleDate_id);
			}
		}
		System.out.println("result=>"+result);
		switch(result) {
		case 0:
			System.out.println("존재하지 않는 공연입니다.");
			service.putSchedule(showdb_id, showdate, showtime, price);
			List<ScheduledateVO> sdnewlist = service.getSchedule(showdb_id, showdate, showtime);
			ScheduledateVO sdnew = sdnewlist.get(sdnewlist.size()-1);
			scheduleDate_id = sdnew.getId();
			System.out.println(scheduleDate_id);
			break;
		case 1:
			System.out.println("이미 있는 공연입니다.");
			break;
		}
		mav.setViewName("redirect:bookSeat?scheduleDate_id="+scheduleDate_id);
		return mav;
	}
	
	
	@GetMapping("bookSeat")
	public ModelAndView bookSeat(HttpServletRequest request, String scheduleDate_id) {
		ModelAndView mav = new ModelAndView();
		service.AutoDel();
		List<SeatVO> svo = service.getSeatInfo(scheduleDate_id);
		if(svo!=null) {
			int size = svo.size();
			String arr="";
			//System.out.println("size=>"+size);
			StringBuffer sb = new StringBuffer();
			
			for(int j=0;j<size;j++) {
				String seatNum = svo.get(j).getSeat_num();
				//System.out.println("svo=>"+seatNum);//[A-7, A-8, A-9]
				//System.out.println(seatNum.length());
				int endidx = seatNum.length();
				arr = seatNum.substring(1, endidx-1);
				//System.out.println("arr=>"+arr);
				sb.append(arr);
				sb.append(", ");
			}
			System.out.println(sb.toString());
			String sn[] = sb.toString().split(", ");
			//for(int i=0;i<sn.length;i++) {
				//System.out.println(sn[i]);
			//}
			mav.addObject("sn",sn);
		}
		
		List<StateVO> st = service.getSeatState(scheduleDate_id);
		if(st!=null) {
			String starr = "";
			StringBuffer stsb = new StringBuffer();
			for(int j=0;j<st.size();j++) {
				String seatno = st.get(j).getSeatno();
				int eidx = seatno.length();
				starr = seatno.substring(1, eidx-1);
				stsb.append(starr);
				stsb.append(", ");
			}
			System.out.println(stsb.toString());
			String stsn[] = stsb.toString().split(", ");
			mav.addObject("stsn", stsn);
		}
		
		ScheduledateVO sdvo = service.getScheduleInfo(scheduleDate_id);
		mav.addObject("sdvo",sdvo);
		
		mav.setViewName("book/bookSeat");
		
		return mav;
	}
	
	
	@GetMapping("bookCredit") 
	public ModelAndView bookCredit(@RequestParam("seatNum") List<String> seatNum, @RequestParam("seatCnt") String seatCnt,
								   HttpSession session, HttpServletRequest request, String scheduleDate_id) { 
		String id = (String)session.getAttribute("logId"); 
		ScheduledateVO sdvo = service.getShowInfo(scheduleDate_id);
		UserVO vo = service.getUserInfo(id);
		
		System.out.println("seatNum=>"+seatNum);
		System.out.println("seatCnt=>"+seatCnt);
		int ticketPrice = Integer.parseInt(sdvo.getShowPrice())*Integer.parseInt(seatCnt);
		List<String> sno = seatNum;
		String seatno = sno.toString();
		service.putSeatState(scheduleDate_id, seatno);
		
		ModelAndView mav = new ModelAndView(); 
		mav.addObject("seatNum", seatNum);
		mav.addObject("seatCnt", seatCnt);
		mav.addObject("ticketPrice",ticketPrice);
		mav.addObject("sdvo", sdvo);
		mav.addObject("vo", vo);
		mav.setViewName("book/bookCredit"); 
		return mav; 
	}
	
	@PostMapping("bookCreditOk")
	public void bookCreditOk(
			BookVO vo, HttpSession session, HttpServletRequest request) {
		System.out.println(vo.toString());
		//BookVO [imp_uid=imp_633585644318, orderno=order_1665448585282, applynum=07452022, price=10, addr=역삼 역삼동, email=eduminhy@gmail.com, seatNum=[A-1], seatCnt=1]
		String id = (String)session.getAttribute("logId");
		//String scheduleDate_id = request.getParameter("scheduleDate_id");
		service.putOrderlist(vo.getOrderno(), id, vo.getScheduleDate_id(), vo.getImp_uid(), vo.getApplynum(), vo.getPrice(), vo.getAddr(), vo.getEmail());
		System.out.println("orderlist data 넣기 성공");
		System.out.println(vo.getSeatNum());
		
		List<String> snlist = vo.getSeatNum();
		String sn = snlist.toString();
		System.out.println(sn);
		service.putSeatInfo(sn, vo.getOrderno(), vo.getSeatCnt());
		System.out.println("seat data 넣기 성공");
		List<StateVO> st = service.getSeatState(vo.getScheduleDate_id());
		if(st!=null) {
			service.DelSeatState(vo.getScheduleDate_id(), sn);
		}
	}
	
	@GetMapping("bookCheck")
	public ModelAndView bookCheck(String no) {
		OrderlistVO ovo = service.getOrder(no);
		ModelAndView mav = new ModelAndView();
		mav.addObject("ovo", ovo);
		mav.setViewName("book/bookCheck");
		return mav;
	}
}
