package com.team200.proj.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;

import java.util.List;

import org.json.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

import com.team200.proj.service.ShowService;
import com.team200.proj.vo.ReviewVO;

import com.team200.proj.vo.dateVO;

import com.team200.proj.vo.showVO;

@RestController
@RequestMapping("/show/*")
public class showController {

	@Autowired
	ShowService service;

	@GetMapping("showList")
	public ModelAndView showList(String genre) {

		ModelAndView mav = new ModelAndView();

		mav.addObject("genre", genre);
		mav.addObject("showlist", service.getShowList(genre));
		mav.addObject("weeklylist", service.WeeklyRankingList(genre));
		mav.addObject("boardlist",service.getBoardList(genre));
		mav.addObject("newlist", service.getNewList(genre));

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
	// http://localhost:8020/show/showDetail?show_id=1234

	@GetMapping("showDetail")
	public ModelAndView showDetail(String show_id, String orderno, HttpSession session) {

//	showVO abc = service.showDetail(show_id);
//	System.out.println(abc.getStartdate().replaceAll("[^0-9]",""));
//	System.out.println(abc.getEnddate().replaceAll("[^0-9]",""));
//	String a = abc.getStartdate().replaceAll("[^0-9]","");
//	String b = abc.getEnddate().replaceAll("[^0-9]","");
		System.out.println("orderno=>"+orderno);
		
		showVO vo = service.showDetail(show_id);
		String showtime = vo.getOpen_time();
//		System.out.println(showtime);
		String[] spi = showtime.split("\\)");
		dateVO dVO = new dateVO();
//		System.out.println("-----------------------------");
		for (int i = 0; i < spi.length; i++) {
//			System.out.println(spi[i]);
//			System.out.println(spi[i].split("\\(")[1]);
			if (spi[i].contains("월요일")) {
//				System.out.println("월요일" + spi[i]);
				dVO.setMonday(spi[i].split("\\(")[1]);
				if (spi[i].contains("화요일")) {
					dVO.setTuesday(spi[i].split("\\(")[1]);
				} else if (spi[i].contains("수요일")) {
					dVO.setTuesday(spi[i].split("\\(")[1]);
					dVO.setWednesday(spi[i].split("\\(")[1]);
				} else if (spi[i].contains("목요일")) {
					dVO.setTuesday(spi[i].split("\\(")[1]);
					dVO.setWednesday(spi[i].split("\\(")[1]);
					dVO.setThursday(spi[i].split("\\(")[1]);
				} else if (spi[i].contains("금요일")) {
					dVO.setTuesday(spi[i].split("\\(")[1]);
					dVO.setWednesday(spi[i].split("\\(")[1]);
					dVO.setThursday(spi[i].split("\\(")[1]);
					dVO.setFriday(spi[i].split("\\(")[1]);
				} else if (spi[i].contains("토요일")) {
					dVO.setTuesday(spi[i].split("\\(")[1]);
					dVO.setWednesday(spi[i].split("\\(")[1]);
					dVO.setThursday(spi[i].split("\\(")[1]);
					dVO.setFriday(spi[i].split("\\(")[1]);
					dVO.setSaturday(spi[i].split("\\(")[1]);
				} else if (spi[i].contains("일요일")) {
					dVO.setTuesday(spi[i].split("\\(")[1]);
					dVO.setWednesday(spi[i].split("\\(")[1]);
					dVO.setThursday(spi[i].split("\\(")[1]);
					dVO.setFriday(spi[i].split("\\(")[1]);
					dVO.setSaturday(spi[i].split("\\(")[1]);
					dVO.setSunday(spi[i].split("\\(")[1]);
				}
			} else if (spi[i].contains("화요일")) {
//				System.out.println("화요일" + spi[i]);
				dVO.setTuesday(spi[i].split("\\(")[1]);
				if (spi[i].contains("수요일")) {

					dVO.setWednesday(spi[i].split("\\(")[1]);
				} else if (spi[i].contains("목요일")) {

					dVO.setWednesday(spi[i].split("\\(")[1]);
					dVO.setThursday(spi[i].split("\\(")[1]);
				} else if (spi[i].contains("금요일")) {

					dVO.setWednesday(spi[i].split("\\(")[1]);
					dVO.setThursday(spi[i].split("\\(")[1]);
					dVO.setFriday(spi[i].split("\\(")[1]);
				} else if (spi[i].contains("토요일")) {

					dVO.setWednesday(spi[i].split("\\(")[1]);
					dVO.setThursday(spi[i].split("\\(")[1]);
					dVO.setFriday(spi[i].split("\\(")[1]);
					dVO.setSaturday(spi[i].split("\\(")[1]);
				} else if (spi[i].contains("일요일")) {

					dVO.setWednesday(spi[i].split("\\(")[1]);
					dVO.setThursday(spi[i].split("\\(")[1]);
					dVO.setFriday(spi[i].split("\\(")[1]);
					dVO.setSaturday(spi[i].split("\\(")[1]);
					dVO.setSunday(spi[i].split("\\(")[1]);
				} else if (spi[i].contains("월요일")) {
					dVO.setWednesday(spi[i].split("\\(")[1]);
					dVO.setThursday(spi[i].split("\\(")[1]);
					dVO.setFriday(spi[i].split("\\(")[1]);
					dVO.setSaturday(spi[i].split("\\(")[1]);
					dVO.setSunday(spi[i].split("\\(")[1]);
					dVO.setMonday(spi[i].split("\\(")[1]);
				}
			} else if (spi[i].contains("수요일")) {
//				System.out.println("수요일" + spi[i]);
				dVO.setWednesday(spi[i].split("\\(")[1]);
				if (spi[i].contains("목요일")) {

					dVO.setThursday(spi[i].split("\\(")[1]);
				} else if (spi[i].contains("금요일")) {

					dVO.setThursday(spi[i].split("\\(")[1]);
					dVO.setFriday(spi[i].split("\\(")[1]);
				} else if (spi[i].contains("토요일")) {

					dVO.setThursday(spi[i].split("\\(")[1]);
					dVO.setFriday(spi[i].split("\\(")[1]);
					dVO.setSaturday(spi[i].split("\\(")[1]);
				} else if (spi[i].contains("일요일")) {

					dVO.setThursday(spi[i].split("\\(")[1]);
					dVO.setFriday(spi[i].split("\\(")[1]);
					dVO.setSaturday(spi[i].split("\\(")[1]);
					dVO.setSunday(spi[i].split("\\(")[1]);
				} else if (spi[i].contains("월요일")) {

					dVO.setThursday(spi[i].split("\\(")[1]);
					dVO.setFriday(spi[i].split("\\(")[1]);
					dVO.setSaturday(spi[i].split("\\(")[1]);
					dVO.setSunday(spi[i].split("\\(")[1]);
					dVO.setMonday(spi[i].split("\\(")[1]);
				}
				if (spi[i].contains("화요일")) {
					dVO.setThursday(spi[i].split("\\(")[1]);
					dVO.setFriday(spi[i].split("\\(")[1]);
					dVO.setSaturday(spi[i].split("\\(")[1]);
					dVO.setSunday(spi[i].split("\\(")[1]);
					dVO.setMonday(spi[i].split("\\(")[1]);
					dVO.setTuesday(spi[i].split("\\(")[1]);
				}
			} else if (spi[i].contains("목요일")) {
//				System.out.println("목요일" + spi[i]);
				dVO.setThursday(spi[i].split("\\(")[1]);
				if (spi[i].contains("금요일")) {
					dVO.setFriday(spi[i].split("\\(")[1]);
				} else if (spi[i].contains("토요일")) {
					dVO.setFriday(spi[i].split("\\(")[1]);
					dVO.setSaturday(spi[i].split("\\(")[1]);
				} else if (spi[i].contains("일요일")) {
					dVO.setFriday(spi[i].split("\\(")[1]);
					dVO.setSaturday(spi[i].split("\\(")[1]);
					dVO.setSunday(spi[i].split("\\(")[1]);
				} else if (spi[i].contains("월요일")) {
					dVO.setFriday(spi[i].split("\\(")[1]);
					dVO.setSaturday(spi[i].split("\\(")[1]);
					dVO.setSunday(spi[i].split("\\(")[1]);
					dVO.setMonday(spi[i].split("\\(")[1]);
				} else if (spi[i].contains("화요일")) {
					dVO.setFriday(spi[i].split("\\(")[1]);
					dVO.setSaturday(spi[i].split("\\(")[1]);
					dVO.setSunday(spi[i].split("\\(")[1]);
					dVO.setMonday(spi[i].split("\\(")[1]);
					dVO.setTuesday(spi[i].split("\\(")[1]);
				} else if (spi[i].contains("수요일")) {
					dVO.setFriday(spi[i].split("\\(")[1]);
					dVO.setSaturday(spi[i].split("\\(")[1]);
					dVO.setSunday(spi[i].split("\\(")[1]);
					dVO.setMonday(spi[i].split("\\(")[1]);
					dVO.setTuesday(spi[i].split("\\(")[1]);
					dVO.setWednesday(spi[i].split("\\(")[1]);
				}
			} else if (spi[i].contains("금요일")) {
//				System.out.println("금요일" + spi[i]);
				dVO.setFriday(spi[i].split("\\(")[1]);
				if (spi[i].contains("토요일")) {

					dVO.setSaturday(spi[i].split("\\(")[1]);
				} else if (spi[i].contains("일요일")) {

					dVO.setSaturday(spi[i].split("\\(")[1]);
					dVO.setSunday(spi[i].split("\\(")[1]);
				} else if (spi[i].contains("월요일")) {
					dVO.setSaturday(spi[i].split("\\(")[1]);
					dVO.setSunday(spi[i].split("\\(")[1]);
					dVO.setMonday(spi[i].split("\\(")[1]);
				} else if (spi[i].contains("화요일")) {
					dVO.setSaturday(spi[i].split("\\(")[1]);
					dVO.setSunday(spi[i].split("\\(")[1]);
					dVO.setMonday(spi[i].split("\\(")[1]);
					dVO.setTuesday(spi[i].split("\\(")[1]);
				} else if (spi[i].contains("수요일")) {
					dVO.setSaturday(spi[i].split("\\(")[1]);
					dVO.setSunday(spi[i].split("\\(")[1]);
					dVO.setMonday(spi[i].split("\\(")[1]);
					dVO.setTuesday(spi[i].split("\\(")[1]);
					dVO.setWednesday(spi[i].split("\\(")[1]);
				} else if (spi[i].contains("목요일")) {
					dVO.setSaturday(spi[i].split("\\(")[1]);
					dVO.setSunday(spi[i].split("\\(")[1]);
					dVO.setMonday(spi[i].split("\\(")[1]);
					dVO.setTuesday(spi[i].split("\\(")[1]);
					dVO.setWednesday(spi[i].split("\\(")[1]);
					dVO.setThursday(spi[i].split("\\(")[1]);
				}
			} else if (spi[i].contains("토요일")) {
				dVO.setSaturday(spi[i].split("\\(")[1]);
				if (spi[i].contains("일요일")) {

					dVO.setSunday(spi[i].split("\\(")[1]);
				} else if (spi[i].contains("월요일")) {

					dVO.setSunday(spi[i].split("\\(")[1]);
					dVO.setMonday(spi[i].split("\\(")[1]);
				} else if (spi[i].contains("화요일")) {

					dVO.setSunday(spi[i].split("\\(")[1]);
					dVO.setMonday(spi[i].split("\\(")[1]);
					dVO.setTuesday(spi[i].split("\\(")[1]);
				} else if (spi[i].contains("수요일")) {

					dVO.setSunday(spi[i].split("\\(")[1]);
					dVO.setMonday(spi[i].split("\\(")[1]);
					dVO.setTuesday(spi[i].split("\\(")[1]);
					dVO.setWednesday(spi[i].split("\\(")[1]);
				} else if (spi[i].contains("목요일")) {

					dVO.setSunday(spi[i].split("\\(")[1]);
					dVO.setMonday(spi[i].split("\\(")[1]);
					dVO.setTuesday(spi[i].split("\\(")[1]);
					dVO.setWednesday(spi[i].split("\\(")[1]);
					dVO.setThursday(spi[i].split("\\(")[1]);
				} else if (spi[i].contains("금요일")) {
					dVO.setSunday(spi[i].split("\\(")[1]);
					dVO.setMonday(spi[i].split("\\(")[1]);
					dVO.setTuesday(spi[i].split("\\(")[1]);
					dVO.setWednesday(spi[i].split("\\(")[1]);
					dVO.setThursday(spi[i].split("\\(")[1]);
					dVO.setFriday(spi[i].split("\\(")[1]);
				}
			} else if (spi[i].contains("일요일")) {
//				System.out.println("일요일" + spi[i]);
				dVO.setSunday(spi[i].split("\\(")[1]);
				if (spi[i].contains("월요일")) {

					dVO.setMonday(spi[i]);
				} else if (spi[i].contains("화요일")) {

					dVO.setMonday(spi[i].split("\\(")[1]);
					dVO.setTuesday(spi[i].split("\\(")[1]);
				} else if (spi[i].contains("수요일")) {

					dVO.setMonday(spi[i].split("\\(")[1]);
					dVO.setTuesday(spi[i].split("\\(")[1]);
					dVO.setWednesday(spi[i].split("\\(")[1]);
				} else if (spi[i].contains("목요일")) {

					dVO.setMonday(spi[i].split("\\(")[1]);
					dVO.setTuesday(spi[i].split("\\(")[1]);
					dVO.setWednesday(spi[i].split("\\(")[1]);
					dVO.setThursday(spi[i].split("\\(")[1]);
				} else if (spi[i].contains("금요일")) {

					dVO.setMonday(spi[i].split("\\(")[1]);
					dVO.setTuesday(spi[i].split("\\(")[1]);
					dVO.setWednesday(spi[i].split("\\(")[1]);
					dVO.setThursday(spi[i].split("\\(")[1]);
					dVO.setFriday(spi[i].split("\\(")[1]);
				} else if (spi[i].contains("토요일")) {
					dVO.setMonday(spi[i].split("\\(")[1]);
					dVO.setTuesday(spi[i].split("\\(")[1]);
					dVO.setWednesday(spi[i].split("\\(")[1]);
					dVO.setThursday(spi[i].split("\\(")[1]);
					dVO.setFriday(spi[i].split("\\(")[1]);
					dVO.setSaturday(spi[i].split("\\(")[1]);
				}

			} else if (spi[i].contains("HOL")) {
//				System.out.println("holiday" + spi[i]);
				dVO.setHoliday(spi[i].split("\\(")[1]);
			}
		}
//		System.out.println(dVO.toString());
		List<ReviewVO> rVO = service.getReview(show_id);
		List<ReviewVO> r5VO = new ArrayList<ReviewVO>();
		List<ReviewVO> r6VO = new ArrayList<ReviewVO>();
		for (int i = 0; i < rVO.size(); i++) {
			if (i <= 4) {
				r5VO.add(rVO.get(i));
			} else {
				r6VO.add(rVO.get(i));
			}
		}
		double star = 0;
		for (int i = 0; i < rVO.size(); i++) {
			star += Double.valueOf(rVO.get(i).getRate());
			System.out.println(star);
		}
		System.out.println(star / rVO.size());
		ModelAndView mav = new ModelAndView();
		mav.addObject("starResult", String.format("%.2f", star / rVO.size()));
		mav.addObject("rVO", r5VO);
		mav.addObject("r6VO", r6VO);
		mav.addObject("dvo", dVO);
		mav.addObject("show", vo);

		String user_id = (String) (session.getAttribute("logId"));
//		System.out.println(user_id);
		if(user_id != null) {
//			System.out.println(vo.getId());
//			System.out.println(service.getmyheart(user_id, vo.getId()));
			mav.addObject("myheart", service.getmyheart(user_id, vo.getId()));
		}

		mav.addObject("sd", vo.getStartdate().replaceAll("[^0-9]", ""));
		mav.addObject("ed", vo.getEnddate().replaceAll("[^0-9]", ""));
		mav.setViewName("show/showDetail");
		return mav;
	}

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
    	service.setReport(id, rcontent,logid);
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
	@PostMapping("setReview")
	@ResponseBody
	public void setReview(HttpServletRequest request, ReviewVO vo){
		HttpSession session = request.getSession();
		String user_id = (String) (request.getSession()).getAttribute("logId");
		System.out.println(vo.toString());



	}
	@GetMapping("setMyFav")
	public void setMyFav(HttpServletRequest request, String a){
		HttpSession session = request.getSession();
		String user_id = (String) (request.getSession()).getAttribute("logId");
		System.out.println(user_id);
		System.out.println(a);
		service.setMyFav(user_id, a);


	}
	@GetMapping("delMyFav")
	public void delMyFav(HttpServletRequest request, String a){
		HttpSession session = request.getSession();
		String user_id = (String) (request.getSession()).getAttribute("logId");
		System.out.println(user_id);
		System.out.println(a);
		service.delMyFav(user_id, a);


	}
}
