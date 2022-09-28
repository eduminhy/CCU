package com.team200.proj.controller;


import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Scanner;

import org.json.XML;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.team200.proj.service.IndexService;
import com.team200.proj.vo.festivalVO;
import com.team200.proj.vo.showVO;

@RestController
@RequestMapping("/")
public class homeController {
	@Autowired
	IndexService service;
	
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
	public String popl(int a, String b){
//		int a = 1; // 1 7 30
//		String b = "뮤지컬";
//		mav = new ModelAndView();
//
//		System.out.println(service.outputpopularDWMData(a,b));
		String json = new Gson().toJson(service.outputpopularDWMData(a,b));
//		mav.addObject("popl"+a, json);
//		mav.setViewName("index");
		return json;
	}
	@GetMapping("/admin")
	public ModelAndView admin(){
		System.out.println("admin");
		mav = new ModelAndView();
		mav.setViewName("adminPage/admin");
		return mav;
	}
	
	@GetMapping("/test")
	public ModelAndView test(){
		System.out.println("test");
		mav = new ModelAndView();
		mav.setViewName("testFolder/test");
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
}
