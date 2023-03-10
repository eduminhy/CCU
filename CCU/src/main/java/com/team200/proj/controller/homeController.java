package com.team200.proj.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import com.team200.proj.Message;

import com.team200.proj.service.IndexService;
import com.team200.proj.service.MypageService;
import com.team200.proj.vo.AdminBookPageVO;
import com.team200.proj.vo.OrderlistVO;
import com.team200.proj.vo.BoardVO;
import com.team200.proj.vo.PagingVO;
import com.team200.proj.vo.ReportVO;
import com.team200.proj.vo.ReviewVO;
import com.team200.proj.vo.UserVO;

import okhttp3.Response;

@RestController
@RequestMapping("/")
public class homeController {
	@Autowired
	IndexService service;
//	MypageService service2;

	ModelAndView mav = null;

	@GetMapping("/")
	public ModelAndView home() throws IOException, ParseException {
		mav = new ModelAndView();

		mav.addObject("popl", service.outputpopularData());
//		mav.addObject("poplW", service.outputpopularData());
//		mav.addObject("poplM", service.outputpopularData());
		mav.addObject("fest", service.outputFestivalData());

		mav.setViewName("index");
		return mav;

	}

	@GetMapping("/popl")
	public String popl(int a, String b) {
//		int a = 1; // 1 7 30
//		String b = "뮤지컬";
//		mav = new ModelAndView();
//		
//		System.out.println(service.outputpopularDWMData(a,b));
		String json = new Gson().toJson(service.outputpopularDWMData(a, b));
//		mav.addObject("popl"+a, json);
//		mav.setViewName("index");
		return json;
	}

	@GetMapping("/admin")
	@ResponseBody

	public ModelAndView admin(PagingVO pVO, HttpSession session, AdminBookPageVO apvo) {

		System.out.println("admin");
		String id = (String) session.getAttribute("logId");
		List<OrderlistVO> booklist = service.getReservation(apvo);
		mav = new ModelAndView();
//		ReviewVO rvO = new ReviewVO();
		System.out.println(service.getTotalUser(pVO));
		pVO.setTotalRecord(service.getTotalUser(pVO));
		pVO.setTotalRecord2(service.getTotalUser2(pVO));
		pVO.setTotalRecord3(service.getTotalUser5(pVO));
		pVO.setTotalRecord4(service.getTotalUser3(pVO));
		pVO.setTotalRecord5(service.getTotalUser4(pVO));
		pVO.setTotalRecord6(service.getTotalUser6(pVO));
		mav.addObject("pVO", pVO);

		mav.addObject("list", service.userList(pVO));
		apvo.setBooktotalRecord(service.totalReservation(apvo));
		System.out.println(service.totalReservation(apvo));
		mav.addObject("apvo", apvo);
		mav.addObject("booklist", booklist);

		mav.addObject("list", service.userList(pVO));

		mav.addObject("blist", service.boardList(pVO));
		mav.addObject("rlist", service.reportList(pVO));
		mav.addObject("mlist", service.mreportList(pVO));
		mav.addObject("reviewlist", service.reviewList(pVO));
		mav.addObject("chatList", service.chatList(pVO));
		System.out.println(pVO.toString());
//		if (pVO.getSearchKey() == "") {
//			mav.setViewName("adminPage/admin?view=user");
//		} else if (pVO.getSearchKey2() == "") {
//			mav.setViewName("adminPage/admin?view=board");
//		} else {

		mav.setViewName("adminPage/admin");
//		}

		return mav;
	}

	@GetMapping("/test")
	public ModelAndView test() {
		System.out.println("test");
		mav = new ModelAndView();
		mav.setViewName("testFolder/test");
		return mav;
	}

	@PostMapping("/multiDel")
	public ModelAndView multiDel(BoardVO vo) {
		int cnt = service.boardMultiDel(vo);
//		System.out.println(cnt);
		mav = new ModelAndView();
		mav.setViewName("redirect:/admin");
		mav.addObject("data", "게시글 삭제가 완료되었습니다.");
		mav.addObject("data2", "board");
		mav.setViewName("Message");
		return mav;
	}

	@PostMapping("/multiDel2")
	public ModelAndView multiDel2(UserVO vo) {
		int cnt = service.boardMultiDel2(vo);
//		System.out.println(cnt);
		mav = new ModelAndView();
		mav.setViewName("redirect:/admin");
		mav.addObject("data", "유저 삭제가 완료되었습니다.");
		mav.addObject("data2", "user");
		mav.setViewName("Message");
		return mav;
	}

	@PostMapping("/multiDel3")
	public ModelAndView multiDel3(ReportVO vo) {
		int cnt = service.boardMultiDel3(vo);
//		System.out.println(cnt);
		mav = new ModelAndView();
		mav.setViewName("redirect:/admin");
		mav.addObject("data", "신고접수된 공연후기가 삭제 완료되었습니다.");
		mav.addObject("data2", "reportReview");
		mav.setViewName("Message");
		return mav;
	}

	@PostMapping("/multiDel4")
	public ModelAndView multiDel4(ReportVO vo) {
		int cnt = service.boardMultiDel4(vo);
//		System.out.println(cnt);
		mav = new ModelAndView();
		mav.setViewName("redirect:/admin");
		mav.addObject("data", "신고접수된 미팅게시판 글이 삭제되었습니다.");
		mav.addObject("data2", "reportMeet");
		mav.setViewName("Message");
		return mav;
	}

	@PostMapping("/multiDel5")
	public ModelAndView multiDel5(ReportVO vo) {
		int cnt = service.boardMultiDel5(vo);
//		System.out.println(cnt);
		mav = new ModelAndView();
		mav.setViewName("redirect:/admin");
		mav.addObject("data", "선택된 후기 게시글 글이 삭제되었습니다.");
		mav.addObject("data2", "review");
		mav.setViewName("Message");
		return mav;
	}
	@PostMapping("/multiDel51")
	public ModelAndView multiDel51(ReportVO vo) {
		int cnt = service.boardMultiDel51(vo);
//		System.out.println(cnt);
		mav = new ModelAndView();
		mav.setViewName("redirect:/admin");
		mav.addObject("data", "선택된 채팅방이 삭제되었습니다.");
		mav.addObject("data2", "chat");
		mav.setViewName("Message");
		return mav;
	}
	@PostMapping("/bookDel")
	public ModelAndView bookDel(OrderlistVO vo) {
		int cnt = service.bookDel(vo);
		mav = new ModelAndView();
		mav.setViewName("redirect:/admin");
		return mav;
	}

//	@GetMapping("sms")
//	@ResponseBody
//	public ModelAndView sms() throws IOException {
//		System.out.println(11);
//		mav = new ModelAndView();
//		mav.setViewName("sms");
//		System.out.println();
//		URL url = new URL("https://oauth2.cert.toss.im/token");
//		HttpURLConnection httpConn = (HttpURLConnection) url.openConnection();
//		httpConn.setRequestMethod("POST"); 
//
//		httpConn.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
//		httpConn.setDoOutput(true);
//		OutputStreamWriter writer = new OutputStreamWriter(httpConn.getOutputStream());
//		writer.write("grant_type=client_credentials&" +
//		        "client_id=test_a8e23336d673ca70922b485fe806eb2d&" +
//		        "client_secret=test_418087247d66da09fda1964dc4734e453c7cf66a7a9e3&" +
//		        "scope=ca");
//		writer.flush();
//		writer.close(); 
//
//		httpConn.getOutputStream().close();
//		InputStream responseStream = httpConn.getResponseCode() == 200
//		        ? httpConn.getInputStream()
//		        : httpConn.getErrorStream();
//		Scanner s = new Scanner(responseStream).useDelimiter("\\A");
//		String response = s.hasNext() ? s.next() : "";
//		System.out.println(response);
//		return mav;
//	}
//	
//	@PostMapping("sms2")
//	@ResponseBody
//	public ModelAndView sms2(@RequestParam String imp_uid){
//		System.out.println(12);
//		System.out.println(imp_uid);
//		mav = new ModelAndView();
//		mav.setViewName("sms2");
//		return mav;
//	}
	@RequestMapping("/mychatt")
	public ModelAndView chatt() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("chatting");
		return mv;
	}
}
