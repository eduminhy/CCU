package com.team200.proj.controller;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.team200.proj.service.ChatService;
import com.team200.proj.service.UserService;
import com.team200.proj.vo.chatRoomVO;
import com.team200.proj.vo.chatVO;

@Controller
public class QnaController {
	
	ModelAndView mav = null;
	
	@Autowired
	ChatService chatService;
	
//	@RequestMapping("/qna")
//	public String qna() {
//		return "faqboard/qna";
//	}
	@RequestMapping("/faq")
	public String faq() {
		return "faqboard/faq";
	}
	
	@RequestMapping("/qna")
	public ModelAndView chat() {
		
		mav = new ModelAndView();
		mav.setViewName("faqboard/chat");
		
		return mav;
	}
	
	@RequestMapping("/chatList")
	public ModelAndView chatList() {
		
		mav = new ModelAndView();
		mav.setViewName("faqboard/chatlist");
		
		return mav;
	}
	
	
	
//	@GetMapping("/registChat")
//	public ModelAndView admin(HttpServletRequest request, HttpSession session, HttpServletResponse response, Model model) {
//		
////		mav.setViewName("faqboard/registChat");
//		
//		String userid = (String)session.getAttribute("logId"); 
//		if( userid == null ) {
//			System.out.println("ERROR");
//		}
//		System.out.println("userId : " + userid);
//		
//		// userid 이게 관리자인지 사용자인지 
//		// DB 조회해오면돼
//		
//		chatVO cvo = new chatVO();
//		cvo.setSend_user_id(userid);
//		
//		chatVO Rcvo = chatService.getChat(userid);
//		if( Rcvo == null ) {
//			chatService.registChat(cvo);
//			Rcvo = chatService.getChat(userid);
//			Rcvo.setChat_role(1);
//			chatService.registChatRoom(Rcvo);
//		} 
//		
//		List<chatRoomVO> chatList = chatService.getChatRoomList(Rcvo.getChat_room_id());
//		System.out.println("chatList : " + chatList);
//		for( int i = 0 ; i < chatList.size() ; i++ ) {
//			System.out.println(chatList.get(i).getChat_info());
//		}
//		
////		mav.addObject("chatVO", Rcvo);
////		mav.addObject("chatList", chatList);
//		
//		model.addAttribute("chatVO", Rcvo);
//		model.addAttribute("chatList", chatList);
//		// 채팅 목록을 가지고 화면으로 가면댐
//		return mav;
//	}
	
	@PostMapping("/addChat")
	public void addChat(HttpServletRequest request, HttpSession session, HttpServletResponse response, Model model) {
//		System.out.println(request.getParameter("newChat"));
//		System.out.println(request.getParameter("chat_room_id"));
//		System.out.println(request.getParameter("send_user_id"));
		
		// userid 이게 관리자인지 사용자인지 
		// DB 조회해오면돼
				
		chatVO cvo = new chatVO();
		cvo.setChat_info(request.getParameter("newChat"));
		cvo.setChat_room_id(request.getParameter("chat_room_id"));
		cvo.setSend_user_id(request.getParameter("send_user_id"));
		cvo.setChat_role(Integer.parseInt(session.getAttribute("logRole").toString()));
		
		chatService.addChat(cvo);
	}
	
	@GetMapping("/registChat")
	public void registChat(HttpServletRequest request, HttpSession session, HttpServletResponse response, Model model) {
		
//		mav.setViewName("faqboard/registChat");
		
		String userid = (String)session.getAttribute("logId"); 
		if( userid == null ) {
			System.out.println("ERROR");
		}
//		System.out.println("userId : " + userid);
		
		chatVO cvo = new chatVO();
		cvo.setSend_user_id(userid);
		
		chatVO Rcvo = chatService.getChat(userid);
		if( Rcvo == null ) {
			chatService.registChat(cvo);
			Rcvo = chatService.getChat(userid);
			Rcvo.setChat_role(1);
			chatService.registChatRoom(Rcvo);
		} 
		
		List<chatRoomVO> chatList = chatService.getChatRoomList(Rcvo.getChat_room_id());
//		System.out.println("chatList : " + chatList);
		for( int i = 0 ; i < chatList.size() ; i++ ) {
			System.out.println(chatList.get(i).getChat_info());
		}
		
		try {
			HashMap<String, Object> returnMap = new HashMap<String, Object>();
			returnMap.put("chatVO", Rcvo);
			returnMap.put("chatList", chatList);
			
			PrintWriter out = response.getWriter(); 
			JSONObject json = new JSONObject(returnMap);
			out.println(json);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		// 채팅 목록을 가지고 화면으로 가면댐
//		return mav;
	}
}
