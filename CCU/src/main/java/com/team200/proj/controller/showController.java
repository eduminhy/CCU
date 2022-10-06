package com.team200.proj.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.team200.proj.service.DBdataService;
import com.team200.proj.service.ShowService;
import com.team200.proj.vo.ReviewVO;
import com.team200.proj.vo.UserVO;
import com.team200.proj.vo.dateVO;
import com.team200.proj.service.ShowService;

import com.team200.proj.vo.showVO;

@RestController
@RequestMapping("/show/*")
public class showController {

	@Autowired
	ShowService service;

	public String[] selectGenre() {// 장르 가져오기
		int cnt = service.getShowNum();
		// System.out.println("cnt=>"+cnt);//7
		List<String> genreList = service.getShowGenre();// 장르 종류 가져옴

		/*
		 * System.out.println("genreList=>"+genreList);//[연극, 뮤지컬, 클래식, 국악, 복합, 오페라, 무용]
		 * List<String> play = genreList.subList(0, 1);//연극 List<String> musical =
		 * genreList.subList(1, 2);//뮤지컬 List<String> classic = genreList.subList(2,
		 * 3);//클래식 List<String> ktmusic = genreList.subList(3, 4);//국악 List<String> mix
		 * = genreList.subList(4, 5);//복합 List<String> opera = genreList.subList(5,
		 * 6);//오페라 List<String> dance = genreList.subList(6, 7);//무용
		 * System.out.println(play+"\n"+musical+"\n"+classic+"\n"+ktmusic+"\n"+mix+"\n"+
		 * opera+"\n"+dance);
		 */
		StringBuilder sb = new StringBuilder();// List<String>=>String
		for (String item : genreList) {
			sb.append(item);
			sb.append(",");
		}
		// System.out.println(sb.toString());//연극,뮤지컬,클래식,국악,복합,오페라,무용,
		String[] arr = sb.toString().split(",");
		// for(int i=0;i<arr.length;i++) {
		// System.out.println(arr[i]);
		// }
		return arr;
	}

	@GetMapping("showList/{genre}")
	public ModelAndView showList(@PathVariable("genre") String genre) {
		int cnt = service.getShowNum();
		String[] genreArr = selectGenre();// 장르가져옴
		System.out.println(selectGenre()[0]);// 연극
		System.out.println(genreArr[0]);// 연극

		String genre1 = genreArr[0];

		ModelAndView mav = new ModelAndView();

		// mav.addObject("vo", service.getShowList(genre));
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
	public ModelAndView showDetail(String show_id, HttpSession session) {

//	showVO abc = service.showDetail(show_id);
//	System.out.println(abc.getStartdate().replaceAll("[^0-9]",""));
//	System.out.println(abc.getEnddate().replaceAll("[^0-9]",""));
//	String a = abc.getStartdate().replaceAll("[^0-9]","");
//	String b = abc.getEnddate().replaceAll("[^0-9]","");

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
		System.out.println(star/rVO.size());
		ModelAndView mav = new ModelAndView();
		mav.addObject("starResult", String.format("%.2f", star/rVO.size()));
		mav.addObject("rVO", r5VO);
		mav.addObject("r6VO", r6VO);
		mav.addObject("dvo", dVO);
		mav.addObject("show", vo);
		mav.addObject("sd", vo.getStartdate().replaceAll("[^0-9]", ""));
		mav.addObject("ed", vo.getEnddate().replaceAll("[^0-9]", ""));
		mav.setViewName("show/showDetail");
		return mav;
	}

}
