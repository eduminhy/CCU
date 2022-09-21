package com.team200.proj.controller;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.team200.proj.vo.showVO;

import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Calendar;
import java.io.BufferedReader;
import java.io.IOException;

import org.json.XML;
import org.json.simple.JSONArray;

import org.json.simple.JSONObject;

import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;


@Controller
@ResponseBody
@RequestMapping("/dBData/")
public class dbController {
	ModelAndView mav = null;

	@GetMapping("showInputMain")
	public static String main(String[] args) throws IOException, ParseException {
		// http://www.kopis.or.kr/openApi/restful/pblprfr?service=983f7e00b8104d7aa07995c22ee98fde&stdate=20220701&cpage=6&rows=999
		// 0920기준 7월1~종료일없이 4,939개의 공연이 있음..
//		LocalDate now = LocalDate.now();
//		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyyMMdd");
		Calendar mon = Calendar.getInstance();
		mon.add(Calendar.MONTH, -1);
		String sD = new java.text.SimpleDateFormat("yyyyMMdd").format(mon.getTime());
//		System.out.println(beforeMonth);
		Calendar mon2 = Calendar.getInstance();
		mon.add(Calendar.MONTH, +3);
		String eD = new java.text.SimpleDateFormat("yyyyMMdd").format(mon.getTime());
		System.out.println(sD);
		System.out.println(eD);
//		String sD = "20220801";
//		String eD = "20220920";
		StringBuilder urlBuilder = new StringBuilder("http://www.kopis.or.kr/openApi/restful/pblprfr"); /* URL */
		urlBuilder.append(
				"?" + URLEncoder.encode("service", "UTF-8") + "=983f7e00b8104d7aa07995c22ee98fde"); /* Service Key */
		urlBuilder.append(
				"&" + URLEncoder.encode("cpage", "UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /* 페이지 번호 1부터 시작 */
		urlBuilder.append(
				"&" + URLEncoder.encode("rows", "UTF-8") + "=" + URLEncoder.encode("1000", "UTF-8")); /* 한 페이지 결과 수 9999 */

		urlBuilder
				.append("&" + URLEncoder.encode("stdate", "UTF-8") + "=" + URLEncoder.encode(sD, "UTF-8")); /* 검색시작일자 */
		urlBuilder.append("&" + URLEncoder.encode("eddate", "UTF-8") + "=" + URLEncoder.encode(eD, "UTF-8")); /* 종료 */
		urlBuilder.append("&" + URLEncoder.encode("prfstate", "UTF-8") + "=" + URLEncoder.encode("02", "UTF-8")); /* 공연상태여부 00~02 */
//		urlBuilder.append("&" + URLEncoder.encode("type", "UTF-8") + "="+ URLEncoder.encode("json", "UTF-8"));
		URL url = new URL(urlBuilder.toString());
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		conn.setRequestMethod("GET");
		conn.setRequestProperty("Content-type", "application/json");
		System.out.println("Response code: " + conn.getResponseCode());
		BufferedReader rd;
		if (conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
			rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
		} else {
			rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
		}
		StringBuilder sb = new StringBuilder();
		String line;
		while ((line = rd.readLine()) != null) {
			sb.append(line);
		}
		rd.close();
		conn.disconnect();
		String sb2 = sb.toString();
		System.out.println(sb.toString());
		String resultString = XML.toJSONObject(sb2).toString();
		JSONParser parse = new JSONParser();
		JSONObject jsonObject = (JSONObject) parse.parse(resultString);
		System.out.println(jsonObject);
		JSONObject jsonObject2 = (JSONObject) jsonObject.get("dbs");
		System.out.println(jsonObject2);
		JSONArray parse_items = (JSONArray) jsonObject2.get("db");
		System.out.println(parse_items);
		showVO sVO = new showVO();
		for (int i = 0; i < parse_items.size(); i++) { // 배열의 길이만큼 반복
			JSONObject imsi = (JSONObject) parse_items.get(i);
			
			sVO.setId((String) imsi.get("mt20id"));
			System.out.println(imsi.get("mt20id"));
			StringBuilder urlBuilder1 = new StringBuilder("http://www.kopis.or.kr/openApi/restful/pblprfr"); /* URL */
			urlBuilder1.append(
					"/" + imsi.get("mt20id")); /* Service Key */
			urlBuilder1.append(
					"?" + URLEncoder.encode("service", "UTF-8") + "=983f7e00b8104d7aa07995c22ee98fde"); /* Service Key */
//			urlBuilder1.append(
//					"&" + URLEncoder.encode("cpage", "UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /* 페이지 번호 1부터 시작 */
//			urlBuilder1.append(
//					"&" + URLEncoder.encode("rows", "UTF-8") + "=" + URLEncoder.encode("100", "UTF-8")); /* 한 페이지 결과 수 9999 */
//
//			urlBuilder1
//					.append("&" + URLEncoder.encode("stdate", "UTF-8") + "=" + URLEncoder.encode(sD, "UTF-8")); /* 검색시작일자 */
//			urlBuilder1.append("&" + URLEncoder.encode("eddate", "UTF-8") + "=" + URLEncoder.encode(eD, "UTF-8")); /* 종료 */
//			urlBuilder1.append("&" + URLEncoder.encode("prfstate", "UTF-8") + "=" + URLEncoder.encode("02", "UTF-8")); /* 공연상태여부 00~02 */
//			urlBuilder1.append("&" + URLEncoder.encode("type", "UTF-8") + "="+ URLEncoder.encode("json", "UTF-8"));
			URL url1 = new URL(urlBuilder1.toString());
			HttpURLConnection conn1 = (HttpURLConnection) url1.openConnection();
			conn1.setRequestMethod("GET");
			conn1.setRequestProperty("Content-type", "application/json");
			System.out.println("Response code: " + conn1.getResponseCode());
			BufferedReader rd99;
			if (conn1.getResponseCode() >= 200 && conn1.getResponseCode() <= 300) {
				rd99 = new BufferedReader(new InputStreamReader(conn1.getInputStream()));
			} else {
				rd99 = new BufferedReader(new InputStreamReader(conn1.getErrorStream()));
			}
			StringBuilder sb99 = new StringBuilder();
			String line1;
			while ((line1 = rd99.readLine()) != null) {
				sb99.append(line1);
			}
			String sb100 = sb99.toString();
			System.out.println("1 "+sb99.toString());
			String resultString2 = XML.toJSONObject(sb100).toString();
			JSONParser parse1 = new JSONParser();
			JSONObject jsonObject3 = (JSONObject) parse1.parse(resultString2);
			System.out.println("2 "+jsonObject3);
			JSONObject jsonObject4 = (JSONObject) jsonObject3.get("dbs");
			System.out.println("3 "+jsonObject4);
			JSONObject jsonObject5 = (JSONObject) jsonObject4.get("db");
			System.out.println("4 "+jsonObject5);
			sVO.setName((String) imsi.get("prfnm"));
			System.out.println(sVO.toString());
//			service.inputdata(sVO);
		}
//		System.out.println();
		return "index";

	}

}
