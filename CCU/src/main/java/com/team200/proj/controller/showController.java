package com.team200.proj.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.team200.proj.service.ShowService;
import com.team200.proj.vo.showVO;

@RestController
@RequestMapping("/show/*")
public class showController {
	@Autowired
	ShowService service;
	
	public String[] selectGenre() {//장르 가져오기
		int cnt = service.getShowNum();
		//System.out.println("cnt=>"+cnt);//7
		List<String> genreList = service.getShowGenre();//장르 종류 가져옴
		
		/*
		System.out.println("genreList=>"+genreList);//[연극, 뮤지컬, 클래식, 국악, 복합, 오페라, 무용]
		List<String> play = genreList.subList(0, 1);//연극
		List<String> musical = genreList.subList(1, 2);//뮤지컬
		List<String> classic = genreList.subList(2, 3);//클래식
		List<String> ktmusic = genreList.subList(3, 4);//국악
		List<String> mix  = genreList.subList(4, 5);//복합
		List<String> opera = genreList.subList(5, 6);//오페라
		List<String> dance = genreList.subList(6, 7);//무용
		System.out.println(play+"\n"+musical+"\n"+classic+"\n"+ktmusic+"\n"+mix+"\n"+opera+"\n"+dance);
		*/
		StringBuilder sb = new StringBuilder();//List<String>=>String
        for (String item : genreList) {
            sb.append(item);
            sb.append(",");
        }
        //System.out.println(sb.toString());//연극,뮤지컬,클래식,국악,복합,오페라,무용,
		String[] arr = sb.toString().split(",");
		//for(int i=0;i<arr.length;i++) {
			//System.out.println(arr[i]);
		//}
		return arr;
	}
	
	@GetMapping("showList/{genre}")
	public ModelAndView showList(@PathVariable("genre") String genre) {
		int cnt = service.getShowNum();
        String[] genreArr = selectGenre();//장르가져옴
        System.out.println(selectGenre()[0]);//연극
        System.out.println(genreArr[0]);//연극
        
        String genre1 = genreArr[0];
		ModelAndView mav = new ModelAndView();
		
		
		//mav.addObject("vo", service.getShowList(genre));
		mav.setViewName("show/showList");
		return mav;
	}
	
	
	@GetMapping("showDetail")
	public ModelAndView showDetail() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("show/showDetail");
		return mav;
	}
	
}

