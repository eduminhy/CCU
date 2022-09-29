package com.team200.proj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import com.team200.proj.service.DBdataService;
import com.team200.proj.vo.festivalVO;
import com.team200.proj.vo.showVO;


import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;


import java.util.Calendar;


import javax.inject.Inject;

import java.io.BufferedReader;
import java.io.IOException;

import org.json.XML;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.json.simple.JSONArray;


@Controller
@ResponseBody
@RequestMapping("/dBData/")
public class dbController {
	@Inject
	DBdataService service;

	@GetMapping("showInputMain")
	public String showInputMain() throws IOException, ParseException {
		// http://www.kopis.or.kr/openApi/restful/pblprfr?service=983f7e00b8104d7aa07995c22ee98fde&stdate=20220701&cpage=6&rows=999
		// 0920기준 7월1~종료일없이 4,939개의 공연이 있음..
//		LocalDate now = LocalDate.now();
//		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyyMMdd");
		Calendar mon = Calendar.getInstance();
		mon.add(Calendar.MONTH, -2);
		String sD = new java.text.SimpleDateFormat("yyyyMMdd").format(mon.getTime());
//		System.out.println(beforeMonth);
		Calendar mon2 = Calendar.getInstance();
		mon2.add(Calendar.MONTH, +6);
		String eD = new java.text.SimpleDateFormat("yyyyMMdd").format(mon2.getTime());
		System.out.println(sD);
		System.out.println(eD);
//		String sD = "20220801";
//		String eD = "20220920";
		// http://www.kopis.or.kr/openApi/restful/pblprfr?service=983f7e00b8104d7aa07995c22ee98fde&cpage=1&rows=9999&stdate=20220826&eddate=20221126
		StringBuilder urlBuilder = new StringBuilder("http://www.kopis.or.kr/openApi/restful/pblprfr"); /* URL */
		urlBuilder.append(
				"?" + URLEncoder.encode("service", "UTF-8") + "=983f7e00b8104d7aa07995c22ee98fde"); /* Service Key */
		urlBuilder.append(
				"&" + URLEncoder.encode("cpage", "UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /* 페이지 번호 1부터 시작 */
		urlBuilder.append("&" + URLEncoder.encode("rows", "UTF-8") + "="
				+ URLEncoder.encode("9999", "UTF-8")); /* 한 페이지 결과 수 9999 */

		urlBuilder
				.append("&" + URLEncoder.encode("stdate", "UTF-8") + "=" + URLEncoder.encode(sD, "UTF-8")); /* 검색시작일자 */
		urlBuilder.append("&" + URLEncoder.encode("eddate", "UTF-8") + "=" + URLEncoder.encode(eD, "UTF-8")); /* 종료 */
//		urlBuilder.append("&" + URLEncoder.encode("prfstate", "UTF-8") + "="
//				+ URLEncoder.encode("02", "UTF-8")); /* 공연상태여부 00~02 */
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
		// 북촌향우극장 (
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
//		
//		
//		
		showVO sVO;
		for (int i = 0; i < parse_items.size(); i++) { // 배열의 길이만큼 반복
			JSONObject imsi = (JSONObject) parse_items.get(i);
			sVO = new showVO();
			sVO.setId((String) imsi.get("mt20id"));
//			System.out.println(imsi.get("mt20id"));
			StringBuilder urlBuilder1 = new StringBuilder("http://www.kopis.or.kr/openApi/restful/pblprfr"); /* URL */
			urlBuilder1.append("/" + imsi.get("mt20id")); /* Service Key */
//			urlBuilder1.append("/" + "PF194642"); /* Service Key */
			urlBuilder1.append("?" + URLEncoder.encode("service", "UTF-8")
					+ "=983f7e00b8104d7aa07995c22ee98fde"); /* Service Key */
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
//			System.out.println("1 " + sb99.toString());
			String resultString2 = XML.toJSONObject(sb100).toString();
			JSONParser parse1 = new JSONParser();
			JSONObject jsonObject3 = (JSONObject) parse1.parse(resultString2);
//			System.out.println("2 " + jsonObject3);
			JSONObject jsonObject4 = (JSONObject) jsonObject3.get("dbs");
//			System.out.println("3 " + jsonObject4);
			JSONObject parse_items2 = (JSONObject) jsonObject4.get("db");
//			System.out.println("4 " + parse_items2);
			sVO.setIntroduction_image1("");
			sVO.setIntroduction_image2("");
			sVO.setIntroduction_image3("");
			sVO.setIntroduction_image4("");
			sVO.setName((String) parse_items2.get("prfnm"));
			sVO.setStartdate((String) parse_items2.get("prfpdfrom"));
			sVO.setEnddate((String) parse_items2.get("prfpdto"));
//			System.out.println(result);
//			String[] str2 = parse_items2.get("fcltynm").toString().split(" ");
//			sVO.setPlace_name((String) str2[0]);
			sVO.setPlace_name((String) parse_items2.get("fcltynm"));
			sVO.setPerformer((String) parse_items2.get("prfcast"));
			sVO.setProducer((String) parse_items2.get("prfcrew"));
			sVO.setOpen_time((String) parse_items2.get("dtguidance"));
			sVO.setRuntime((String) parse_items2.get("prfruntime"));
			sVO.setMinimum_age((String) parse_items2.get("prfage"));
			sVO.setStatistics_search_by_production_company_name((String) parse_items2.get("entrpsnm"));
			sVO.setPrice((String) parse_items2.get("pcseguidance"));
			sVO.setMainposter((String) parse_items2.get("poster"));
			sVO.setIntroduction_txt((String) parse_items2.get("sty"));
			sVO.setGenre((String) parse_items2.get("genrenm"));
			sVO.setState((String) parse_items2.get("prfstate"));
			sVO.setOpenrun((String) parse_items2.get("openrun"));
//			System.out.println(1234);
//			System.out.println(parse_items2.get("styurls"));
			JSONObject aaa = (JSONObject) parse_items2.get("styurls");
//			System.out.println(155);
//			System.out.println(aaa);
//			System.out.println(155);
//			if(aaa.get("styurl") instanceof JSONArray){
//				System.out.println("제이슨오브젝트");
//			}else if(aaa instanceof JSONObject) {
//				System.out.println("제이슨Array");
//			}
			if(aaa != null) {
			try {
				//
//				System.out.println(aaa.getClass());
				JSONArray aaaa = (JSONArray) aaa.get("styurl");
//				System.out.println(aaaa);
				String abc = aaaa.toString();
				String result = abc.substring(2, abc.length()-2);
//				System.out.println(result);
				String[] str = result.split("\",\"");
//				System.out.println(str[0]);
				try {
					//1번공연  1-1 1-2 1-3 DTO 3ro
					//2번공연 2-1 2-2 2개 2-1 2-2
					//3-1 2-2 
					sVO.setIntroduction_image1(str[0]);
					sVO.setIntroduction_image2(str[1]);
					sVO.setIntroduction_image3(str[2]);
					sVO.setIntroduction_image4(str[3]);
				} catch (Exception e) {
					e.printStackTrace();
				}
//				System.out.println(1);
				
			} catch (Exception e) {
//				System.out.println(aaa.getClass());
//				String aaaa = aaa.toString();
//			System.out.println(aaaa);
//			System.out.println(2);
//				System.out.println(12);
//				System.out.println((String)aaa.get("styurl"));
				String image1 = ((String)aaa.get("styurl"));
				sVO.setIntroduction_image1(image1);
			}
//			System.out.println(sVO.toString());
//			
//			sVO.setIntroduction_image2((String) aaaa.get("0"));
//			sVO.setIntroduction_image3((String) parse_items3.get(2));
//			sVO.setIntroduction_image4((String) parse_items3.get(3));

//            <styurls>
//                <styurl>http://www.kopis.or.kr/upload/pfmIntroImage/PF_PF132236_160704_0226303.jpg</styurl>
//                <styurl>http://www.kopis.or.kr/upload/pfmIntroImage/PF_PF132236_160704_0226302.jpg</styurl>
//                <styurl>http://www.kopis.or.kr/upload/pfmIntroImage/PF_PF132236_160704_0226301.jpg</styurl>
//                <styurl>http://www.kopis.or.kr/upload/pfmIntroImage/PF_PF132236_160704_0226300.jpg</styurl>
//            </styurls>
//			System.out.println(sVO.toString());
			System.out.println(i);
		}
			service.inputShowData(sVO);	
		}
			
//		System.out.println();
		return "index";

	}

//	@GetMapping("palceInputMain")
//	public void palceInputMain() throws IOException, ParseException {
//		for (int ii = 1; ii <= 2; ii++) {
//			String serviceKey = "";
//			if (ii == 1) {
//				serviceKey = "=2204f5ca0d454b54a6548945d7af6daa";
//			} else if (ii == 2) {
//				serviceKey = "=5ebeddf6408f454fab1f134f0cc91231";
//			}
//			StringBuilder urlBuilder = new StringBuilder("http://www.kopis.or.kr/openApi/restful/prfplc"); /* URL */
//			urlBuilder.append("?" + URLEncoder.encode("service", "UTF-8") + serviceKey); /* Service Key */
//			urlBuilder.append("&" + URLEncoder.encode("cpage", "UTF-8") + "=" + ii); /* 페이지 번호 1부터 시작 */
//			urlBuilder.append("&" + URLEncoder.encode("rows", "UTF-8") + "="
//					+ URLEncoder.encode("1200", "UTF-8")); /* 한 페이지 결과 수 9999 */
//			URL url = new URL(urlBuilder.toString());
//			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
//			conn.setRequestMethod("GET");
//			conn.setRequestProperty("Content-type", "application/json");
//			System.out.println("Response code: " + conn.getResponseCode());
//			BufferedReader rd;
//			if (conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
//				rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
//			} else {
//				rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
//			}
//			StringBuilder sb = new StringBuilder();
//			String line;
//			while ((line = rd.readLine()) != null) {
//				sb.append(line);
//			}
//			rd.close();
//			conn.disconnect();
//			String sb2 = sb.toString();
//			System.out.println(sb.toString());
//			String resultString = XML.toJSONObject(sb2).toString();
//			JSONParser parse = new JSONParser();
//			JSONObject jsonObject = (JSONObject) parse.parse(resultString);
//			System.out.println(jsonObject);
//			JSONObject jsonObject2 = (JSONObject) jsonObject.get("dbs");
//			System.out.println(jsonObject2);
//			JSONArray parse_items = (JSONArray) jsonObject2.get("db");
//			System.out.println(parse_items);
//			placeVO pVO = new placeVO();
//			for (int i = 0; i < parse_items.size(); i++) { // 배열의 길이만큼 반복
//				JSONObject imsi = (JSONObject) parse_items.get(i);
//				pVO.setId((String) String.valueOf(imsi.get("mt10id")));
////				cVO.setName((String) String.valueOf(imsi.get("fcltynm")));
////				cVO.setConcert_hall_count((int) Integer.parseInt(String.valueOf(imsi.get("mt13cnt"))));
////			pVO.setCharacter((String) String.valueOf(imsi.get("fcltychartr")));
////			pVO.setOpen_year((int) Integer.parseInt(String.valueOf(imsi.get("opende"))));
////			System.out.println(pVO);
////			System.out.println(i);
////				service.inputPlaceData(pVO);
//				
//				////////////////////////////////////////////////////////////////
//				StringBuilder urlBuilder1 = new StringBuilder("http://www.kopis.or.kr/openApi/restful/prfplc"); /* URL */
//				urlBuilder1.append("/" + imsi.get("mt10id")); /* Service Key */
//				urlBuilder1.append("?" + URLEncoder.encode("service", "UTF-8")
//						+ serviceKey); /* Service Key */
////				urlBuilder1.append(
////						"&" + URLEncoder.encode("cpage", "UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /* 페이지 번호 1부터 시작 */
////				urlBuilder1.append(
////						"&" + URLEncoder.encode("rows", "UTF-8") + "=" + URLEncoder.encode("100", "UTF-8")); /* 한 페이지 결과 수 9999 */
//	//
////				urlBuilder1
////						.append("&" + URLEncoder.encode("stdate", "UTF-8") + "=" + URLEncoder.encode(sD, "UTF-8")); /* 검색시작일자 */
////				urlBuilder1.append("&" + URLEncoder.encode("eddate", "UTF-8") + "=" + URLEncoder.encode(eD, "UTF-8")); /* 종료 */
////				urlBuilder1.append("&" + URLEncoder.encode("prfstate", "UTF-8") + "=" + URLEncoder.encode("02", "UTF-8")); /* 공연상태여부 00~02 */
////				urlBuilder1.append("&" + URLEncoder.encode("type", "UTF-8") + "="+ URLEncoder.encode("json", "UTF-8"));
//				URL url1 = new URL(urlBuilder1.toString());
//				HttpURLConnection conn1 = (HttpURLConnection) url1.openConnection();
//				conn1.setRequestMethod("GET");
//				conn1.setRequestProperty("Content-type", "application/json");
//				System.out.println("Response code: " + conn1.getResponseCode());
//				BufferedReader rd99;
//				if (conn1.getResponseCode() >= 200 && conn1.getResponseCode() <= 300) {
//					rd99 = new BufferedReader(new InputStreamReader(conn1.getInputStream()));
//				} else {
//					rd99 = new BufferedReader(new InputStreamReader(conn1.getErrorStream()));
//				}
//				StringBuilder sb99 = new StringBuilder();
//				String line1;
//				while ((line1 = rd99.readLine()) != null) {
//					sb99.append(line1);
//				}
//				String sb100 = sb99.toString();
////				System.out.println("1 " + sb99.toString());
//				String resultString2 = XML.toJSONObject(sb100).toString();
//				JSONParser parse1 = new JSONParser();
//				JSONObject jsonObject3 = (JSONObject) parse1.parse(resultString2);
////				System.out.println("2 " + jsonObject3);
//				JSONObject jsonObject4 = (JSONObject) jsonObject3.get("dbs");
////				System.out.println("3 " + jsonObject4);
//				JSONObject jsonObject5 = (JSONObject) jsonObject4.get("db");
////				System.out.println("4 " + jsonObject5);
//				
//				
//				pVO.setName((String) String.valueOf(jsonObject5.get("fcltynm")));
////				System.out.println(1);
//				pVO.setTel((String)  String.valueOf(jsonObject5.get("telno")));
////						System.out.println(2);
//				pVO.setUrl((String)  String.valueOf(jsonObject5.get("relateurl")));
////				System.out.println(3);
//				pVO.setAddr((String)  String.valueOf(jsonObject5.get("adres")));
////				System.out.println(4);
//				pVO.setConcert_hall_count(Integer.parseInt(String.valueOf(jsonObject5.get("mt13cnt"))));
////				System.out.println(5);
//				pVO.setSeats_count(Integer.parseInt(String.valueOf(jsonObject5.get("seatscale"))));
////				System.out.println(6);
//				pVO.setLat(Double.parseDouble(String.valueOf(jsonObject5.get("la"))));
////				System.out.println(7);
//				pVO.setLng(Double.parseDouble(String.valueOf(jsonObject5.get("lo"))));
////				System.out.println(8);
////				System.out.println(pVO.toString());
//////				System.out.println(i);
//				service.inputPlaceData(pVO);
//			}
//		}
////		System.out.println();
//
//	}

	@GetMapping("festivalInputMain")
	public String festivalInputMain() throws IOException, ParseException {
		Calendar mon = Calendar.getInstance();
		mon.add(Calendar.MONTH, -2);
		String sD = new java.text.SimpleDateFormat("yyyyMMdd").format(mon.getTime());
//		System.out.println(beforeMonth);
//		Calendar mon2 = Calendar.getInstance();
		mon.add(Calendar.MONTH, +10);
		String eD = new java.text.SimpleDateFormat("yyyyMMdd").format(mon.getTime());
		System.out.println(sD);
		System.out.println(eD);
//		String sD = "20220801";
//		String eD = "20220920";
		// http://www.kopis.or.kr/openApi/restful/pblprfr?service=983f7e00b8104d7aa07995c22ee98fde&cpage=1&rows=9999&stdate=20220826&eddate=20221126
		StringBuilder urlBuilder = new StringBuilder("http://www.kopis.or.kr/openApi/restful/prffest"); /* URL */
		urlBuilder.append(
				"?" + URLEncoder.encode("service", "UTF-8") + "=983f7e00b8104d7aa07995c22ee98fde"); /* Service Key */
		urlBuilder.append(
				"&" + URLEncoder.encode("cpage", "UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /* 페이지 번호 1부터 시작 */
		urlBuilder.append("&" + URLEncoder.encode("rows", "UTF-8") + "="
				+ URLEncoder.encode("9999", "UTF-8")); /* 한 페이지 결과 수 9999 */

		urlBuilder
				.append("&" + URLEncoder.encode("stdate", "UTF-8") + "=" + URLEncoder.encode(sD, "UTF-8")); /* 검색시작일자 */
		urlBuilder.append("&" + URLEncoder.encode("eddate", "UTF-8") + "=" + URLEncoder.encode(eD, "UTF-8")); /* 종료 */
//		urlBuilder.append("&" + URLEncoder.encode("prfstate", "UTF-8") + "="
//				+ URLEncoder.encode("02", "UTF-8")); /* 공연상태여부 00~02 */
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
		// 북촌향우극장 (
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
//		
//		
//		
		festivalVO fVO;
		for (int i = 0; i < parse_items.size(); i++) { // 배열의 길이만큼 반복
			JSONObject imsi = (JSONObject) parse_items.get(i);
			fVO = new festivalVO();
			fVO.setId((String) imsi.get("mt20id"));
			fVO.setName((String) imsi.get("prfnm"));
			fVO.setStartdate((String) imsi.get("prfpdfrom"));
			fVO.setEnddate((String) imsi.get("prfpdto"));
			fVO.setPlace_name((String) imsi.get("fcltynm"));
			fVO.setMainposter((String) imsi.get("poster"));
			fVO.setGenre((String) imsi.get("genrenm"));
			fVO.setState((String) imsi.get("prfstate"));
			
//			System.out.println(imsi.get("mt20id"));
			
			System.out.println(i);
	
			service.inputFestivalData(fVO);	
		}
		
		
		
//		System.out.println();
		return "index";

	}
	@GetMapping("popularInputMain")
	public String popularInputMain() throws IOException, ParseException {
		Calendar mon = Calendar.getInstance();
		mon.add(Calendar.DATE , -1);
		int co = 0;
		String dwm = "";
		for(co=0;co<=2;co++) {
			if(co==0) {
				dwm = "day";
			}else if(co==1) {
				dwm = "week";
			}else if(co==2) {
				dwm = "month";
			}
		String sD = new java.text.SimpleDateFormat("yyyyMMdd").format(mon.getTime());
		System.out.println(sD);
		StringBuilder urlBuilder = new StringBuilder("http://kopis.or.kr/openApi/restful/boxoffice"); /* URL */
		urlBuilder.append(
				"?" + URLEncoder.encode("service", "UTF-8") + "=983f7e00b8104d7aa07995c22ee98fde"); /* Service Key */
		urlBuilder
		.append("&" + URLEncoder.encode("ststype", "UTF-8") + "=" + URLEncoder.encode(dwm, "UTF-8")); 
		urlBuilder.append("&" + URLEncoder.encode("date", "UTF-8") + "=" + URLEncoder.encode(sD, "UTF-8")); /* 종료 */
		urlBuilder.append(
				"&" + URLEncoder.encode("area", "UTF-8") + "=" + URLEncoder.encode("11", "UTF-8"));

		URL url = new URL(urlBuilder.toString());
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		conn.setRequestMethod("GET");
		conn.setRequestProperty("Content-type", "application/json");
//		System.out.println("Response code: " + conn.getResponseCode());
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
		JSONObject jsonObject2 = (JSONObject) jsonObject.get("boxofs");
		System.out.println(jsonObject2);
		JSONArray parse_items = (JSONArray) jsonObject2.get("boxof");
		System.out.println(parse_items);
//		
//		<area>서울</area>
//	      <prfdtcnt>8</prfdtcnt>
//	      <nmrs>669</nmrs>
//	      <prfpd>2016.06.07~2016.07.24</prfpd>
//	      <cate>연극</cate>
//	      <prfplcnm>1관</prfplcnm>
//	      <prfnm>아들</prfnm>
//	      <rnum>2</rnum>
//	      <seatcnt>393</seatcnt>
//	      <poster>http://www.kopis.or.kr/upload/pfmPoster/PF_PF131558_160613_103734.jpg</poster>
//	      <mt20id>PF131558</mt20id>
//		
		showVO sVO;
//		List<showVO> slist = new ArrayList<showVO>();
		for (int i = 0; i < parse_items.size(); i++) { // 배열의 길이만큼 반복
			JSONObject imsi = (JSONObject) parse_items.get(i);
			sVO = new showVO();
			sVO.setId((String) imsi.get("mt20id"));
//			sVO.setName((String) imsi.get("prfnm"));
//			sVO.setStartdate((String) imsi.get("prfpd"));
//			sVO.setMainposter((String)"http://www.kopis.or.kr"+imsi.get("poster"));
//			sVO.setGenre((String) imsi.get("cate"));
			sVO.setShowRank(Integer.parseInt(String.valueOf(imsi.get("rnum"))));
			
			System.out.println(imsi.get("mt20id"));
//			slist.add(sVO);
			try {
				
			if(co==0) {
				service.popularInputMain(sVO);
			}else if(co==1) {
				service.popularWInputMain(sVO);
			}else if(co==2) {
				service.popularMInputMain(sVO);
			}
			} catch (Exception e) {
				e.printStackTrace();
			}
			System.out.println(i);
//			if (i==20) {
//				break;
//			}
		}
		}
		return "index";

	}
	@GetMapping("ChildInputMain")
	public String ChildInputMain() throws IOException, ParseException {
		Calendar mon = Calendar.getInstance();
		mon.add(Calendar.DATE , -1);
		int co = 0;
//		for(co=0;co<=2;co++) {
//			if(co==0) {
////				mon.add(Calendar.MONTH, -1);
//			}else if(co==1) {
//				mon.add(Calendar.MONTH, -1);
//			}else if(co==2) {
//				mon.add(Calendar.MONTH, -2);
//			}
		String sD = new java.text.SimpleDateFormat("yyyyMMdd").format(mon.getTime());
		System.out.println(sD);
		StringBuilder urlBuilder = new StringBuilder("http://kopis.or.kr/openApi/restful/boxoffice"); /* URL */
		urlBuilder.append(
				"?" + URLEncoder.encode("service", "UTF-8") + "=983f7e00b8104d7aa07995c22ee98fde"); /* Service Key */
		urlBuilder
		.append("&" + URLEncoder.encode("ststype", "UTF-8") + "=" + URLEncoder.encode("month", "UTF-8")); 
		urlBuilder.append("&" + URLEncoder.encode("date", "UTF-8") + "=" + URLEncoder.encode(sD, "UTF-8")); /* 종료 */
		urlBuilder.append(
				"&" + URLEncoder.encode("catecode", "UTF-8") + "=" + URLEncoder.encode("KID", "UTF-8"));
		urlBuilder.append(
				"&" + URLEncoder.encode("area", "UTF-8") + "=" + URLEncoder.encode("11", "UTF-8"));
		URL url = new URL(urlBuilder.toString());
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		conn.setRequestMethod("GET");
		conn.setRequestProperty("Content-type", "application/json");
//		System.out.println("Response code: " + conn.getResponseCode());
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
		JSONObject jsonObject2 = (JSONObject) jsonObject.get("boxofs");
		System.out.println(jsonObject2);
		JSONArray parse_items = (JSONArray) jsonObject2.get("boxof");
		System.out.println(parse_items);
//		
//		<area>서울</area>
//	      <prfdtcnt>8</prfdtcnt>
//	      <nmrs>669</nmrs>
//	      <prfpd>2016.06.07~2016.07.24</prfpd>
//	      <cate>연극</cate>
//	      <prfplcnm>1관</prfplcnm>
//	      <prfnm>아들</prfnm>
//	      <rnum>2</rnum>
//	      <seatcnt>393</seatcnt>
//	      <poster>http://www.kopis.or.kr/upload/pfmPoster/PF_PF131558_160613_103734.jpg</poster>
//	      <mt20id>PF131558</mt20id>
//		
		showVO sVO;
//		List<showVO> slist = new ArrayList<showVO>();
		for (int i = 0; i < parse_items.size(); i++) { // 배열의 길이만큼 반복
			JSONObject imsi = (JSONObject) parse_items.get(i);
			sVO = new showVO();
			sVO.setId((String) imsi.get("mt20id"));
			sVO.setShowRank(Integer.parseInt(String.valueOf(imsi.get("rnum"))));
			System.out.println(imsi.get("mt20id"));
			try {
				service.popularChildInputMain(sVO);
			} catch (Exception e) {
				e.printStackTrace();
			}
			System.out.println(i);
//			if (i==20) {
//				break;
//			}
		}
		
		return "index";

	}
	
}
