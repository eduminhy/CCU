package com.team200.proj.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.team200.proj.service.ReplyService;

import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import com.team200.proj.service.MeetingService;
import com.team200.proj.vo.MeetingVO;

@RestController
@RequestMapping("/meeting/*")
@Controller
public class meetingController {

	@Inject
	MeetingService service;

	@Inject
	ReplyService replyService;

	// 같이갈래요 list
	@RequestMapping(value = "mainMeeting", method = RequestMethod.GET)
	public ModelAndView mainMeeting(@RequestParam(required = false) String title) {
		ModelAndView mav = new ModelAndView();

		if (title == null) {
			mav.addObject("list", service.mainMeeting());
		} else {
			mav.addObject("list", service.searchByTitle(title));
		}

		mav.setViewName("meeting/mainMeeting");
		return mav;
	}

	// --------------------------------------------------------------------------------

	// mainMeeting?genre=연극
	@RequestMapping(value = "mainMeeting/{genre}", method = RequestMethod.GET)
	public ModelAndView meetingFindGenre(@PathVariable String genre, @RequestParam(required = false) String title) {
		ModelAndView mav = new ModelAndView();
//		아니 근데 여기 매핑에는 타이틀 선언안되있잖아 에러날거같은데
		if (title == null) {
		mav.addObject("list", service.mainMeetingGenre(genre));
		} else {
			mav.addObject("list", service.searchByTitle(title));
		
		}
		mav.setViewName("meeting/mainMeeting");
		return mav;
	}

	@RequestMapping(value = "mainMeeting2/{genre1}&{genre2}", method = RequestMethod.GET)
	public ModelAndView meetingFindGenre(@PathVariable String genre1, @PathVariable String genre2, @RequestParam(required = false) String title) {
		ModelAndView mav = new ModelAndView();
		if (title == null) {
		mav.addObject("list", service.mainMeetingGenre2(genre1, genre2));
		} else {
			mav.addObject("list", service.searchByTitle(title));
			
		} 
		
		mav.setViewName("meeting/mainMeeting");
		return mav;
	}

	// --------------------------------------------------------------------------------

	@RequestMapping("playMeetingList")
	public ModelAndView playMeetingList1() {
		ModelAndView mav = new ModelAndView();

		mav.addObject("list", service.playMeetingList());

		System.out.println();

		mav.setViewName("meeting/playMeetingList");
		return mav;
	}

	// ---------------------------------------------------------------------------------
	@RequestMapping(value = "meetingDelete/{id}", method = RequestMethod.GET)
	public ModelAndView meetingDelete(@PathVariable Long id) {
		service.meetingDelete(id);

		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/meeting/mainMeeting");

		return mav;
	}

// ------------------------------------------------------------------------
	@GetMapping("/showModal")
	public ModelAndView GotoShowModalAll() {
		ModelAndView mav = new ModelAndView();

		mav.addObject("showList", service.showModalAll());

		mav.setViewName("meeting/showModal");
		return mav;
	}

	@GetMapping("/showModal/{name}")
	public ModelAndView GotoShowModal(@PathVariable String name) {
		ModelAndView mav = new ModelAndView();

		mav.addObject("showList", service.showModal(name));

		mav.setViewName("meeting/showModal");
		return mav;
	}
// ----------------------------------------------------------------------------

	@GetMapping("view/{id}")
	public ModelAndView GotoMeetingView(@PathVariable Long id, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();

		HttpSession session = request.getSession();
		String user_id = (String) session.getAttribute("logId");

		mav.addObject("meetingView", service.meetingView(id));
		mav.addObject("reply", replyService.replyList(id));
		mav.addObject("user", user_id);

		mav.setViewName("meeting/meetingDetailView");
		return mav;
	}

// ----------------------------------------------------------------------------

	@GetMapping("mainMeetingNotice")
	public ModelAndView mainMeetingNotice() { // 메인미팅공지
		ModelAndView mav = new ModelAndView();
		mav.setViewName("meeting/mainMeetingNotice");
		return mav;
	}

	@GetMapping("playMeetingForm")
	public ModelAndView playMeetingForm() { // 연극게시판글쓰기폼
		ModelAndView mav = new ModelAndView();
		mav.setViewName("meeting/playMeetingForm");
		return mav;
	}

	@GetMapping("playMeetingComment")
	public ModelAndView playMeetingComment() { // 연극게시판댓글폼
		ModelAndView mav = new ModelAndView();
		mav.setViewName("meeting/playMeetingComment");
		return mav;
	}

	@RequestMapping(value = "meeting/meetingWrite", method = RequestMethod.POST)
	public ModelAndView mettingWrite(MeetingVO vo, HttpServletRequest request) {
		HttpSession session = request.getSession();
		String user_id = (String) session.getAttribute("logId");
		vo.setUser_id(user_id);

		System.out.println("voString : " + vo);

		Long id = vo.getId();

		String a = vo.getContent();

		String aa = a.replaceAll("</p>", "<p>");

		String aaa = aa.replaceAll("<p>", "");

		vo.setContent(aaa);

		int cnt;

		if (service.mainMeetingGet(id) == null) {
			cnt = service.meetingWriteOk(vo);
		} else {
			cnt = service.meetingEdit(vo);
		}

		ModelAndView mav = new ModelAndView();

		if (cnt > 0) {
			mav.setViewName("redirect:/meeting/mainMeeting");
		} else {
			mav.setViewName("meeting/playmeetingForm");
		}
		return mav;
	}

	@RequestMapping(value = "meetingEdit/{id}", method = RequestMethod.GET)
	public ModelAndView meetingEdit(@PathVariable Long id) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("board", service.meetingView(id));

		mav.setViewName("meeting/playMeetingForm");
		return mav;
	}

	@RequestMapping(value = "meetingEdit", method = RequestMethod.PUT)
	public ModelAndView meetingEdit(MeetingVO vo) {
		int cnt = service.meetingEdit(vo);

		ModelAndView mav = new ModelAndView();

		if (cnt > 0) {
			mav.setViewName("redirect:/meeting/mainMeeting");
		} else {
			mav.setViewName("meeting/playmeetingForm");
		}
		return mav;
	}

	// report
	@RequestMapping(value = "report", method = RequestMethod.POST)
	@ResponseBody
	public void report(HttpServletRequest request) throws IOException, ParseException {
		HttpSession session = request.getSession();
		String user_id = (String) (request.getSession()).getAttribute("logId");
//		System.out.println(session.getAttribute("logId"));

		String str = readBody(request);
		System.out.println(str);
//		String str = "{\"name\":\"dong\"}";
//		readBody(request).replace("\"", "\\\"");
//		System.out.println(str);
//		System.out.println(readBody(request).replace("\"", "\\\""));
//		System.out.println((readBody(request)).toString());
//		System.out.println((readBody(request)).toString().replace("\"", "\\\""));
		JSONParser parser = new JSONParser();
		org.json.simple.JSONObject jsonObject = (org.json.simple.JSONObject) parser.parse(str);

		String logid = (String) session.getAttribute("logId");
		int id = Integer.parseInt(String.valueOf(jsonObject.get("id")));
//    	String content = (String) jsonObject.get("content");
		String rcontent = (String) jsonObject.get("rcontent");
		service.setReport(id, rcontent, logid);
//		String str = readBody(request);
//		JSONObject jsonObject = new JSONObject(str.toString());
//        System.out.println("OBJECT : "+jsonObject.toString());
//		JsonObject array = new Gson().fromJson(str, JsonObject.class);
//		System.out.println(array);

//		readBody(request).toString();
//		JSONParser parser = new JSONParser();
//		JSONObject jsonObject = (JSONObject) parser.parse(readBody(request).toString());
//		System.out.println(jsonObject.get("name"));
//		JsonParser parser = new JsonParser();
//		JsonElement element = parser.parse((readBody(request).toString()));
//		JsonObject rootob = element.getAsJsonObject().get("response").getAsJsonObject();
//		JsonObject body = rootob.getAsJsonObject().get("body").getAsJsonObject();
//		JsonObject items = body.getAsJsonObject().get("items").getAsJsonObject();

	}

	public static String readBody(HttpServletRequest request) throws IOException {
		BufferedReader input = new BufferedReader(new InputStreamReader(request.getInputStream()));
		StringBuilder builder = new StringBuilder();
		String buffer;
		while ((buffer = input.readLine()) != null) {
			if (builder.length() > 0) {
				builder.append("\n");
			}
			builder.append(buffer);
		}
		return builder.toString();
	}

//	@GetMapping("report")
//	public ModelAndView report() {
//
//		ModelAndView mav = new ModelAndView();
//		mav.setViewName("show/report");
//		return mav;
//	}

}




////같이갈래요 list
//	@RequestMapping(value = "mainMeeting", method = RequestMethod.GET)
//	public ModelAndView mainMeeting(@RequestParam(required = false) String title) {
//		ModelAndView mav = new ModelAndView();
//
//		if (title == null) {
//			mav.addObject("list", service.mainMeeting());
//		} else {
//			mav.addObject("list", service.searchByTitle(title));
//		}
//
//		mav.setViewName("meeting/mainMeeting");
//		return mav;
//	}
//
//	// --------------------------------------------------------------------------------
//
//	// mainMeeting?genre=연극
//	@RequestMapping(value = "mainMeeting/{genre}", method = RequestMethod.GET)
//	public ModelAndView meetingFindGenre(@PathVariable String genre) {
//		ModelAndView mav = new ModelAndView();
//
//		mav.addObject("list", service.mainMeetingGenre(genre));
//
//		mav.setViewName("meeting/mainMeeting");
//		return mav;
//	}
//
//	@RequestMapping(value = "mainMeeting2/{genre1}&{genre2}", method = RequestMethod.GET)
//	public ModelAndView meetingFindGenre(@PathVariable String genre1, @PathVariable String genre2) {
//		ModelAndView mav = new ModelAndView();
//
//		mav.addObject("list", service.mainMeetingGenre2(genre1, genre2));
//
//		mav.setViewName("meeting/mainMeeting");
//		return mav;
//	}
