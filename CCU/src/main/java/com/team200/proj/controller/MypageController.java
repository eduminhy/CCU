package com.team200.proj.controller;


import java.io.File;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.team200.proj.service.MypageService;
import com.team200.proj.vo.UserVO;


@RestController
@RequestMapping("/mypage/*")
public class MypageController {
	@Inject
	MypageService service;
	
	@GetMapping("myInfo")
	public ModelAndView myInfo(HttpSession session) {
		String id = (String)session.getAttribute("logId");
		//System.out.println(id);
		UserVO vo = service.getMyinfo(id);
		//System.out.println(vo);
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("vo", vo);
		mav.setViewName("mypage/myInfo");
		return mav;
	}
	
	
	//나의 정보 수정 페이지
	@GetMapping("myInfoModify")
	public ModelAndView myInfoModify(HttpSession session) {
		String id = (String)session.getAttribute("logId");
		UserVO vo = service.getMyinfo(id);
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("vo", vo);
		mav.setViewName("mypage/myInfoModify");
		return mav;
	}
	
	//프로필 이미지파일 업로드
	@PostMapping("myInfoModifyOk")
	public ResponseEntity<String> myInfoModifyOk(UserVO vo, HttpServletRequest request){
		//파일명 보관
		UserVO dbFile = service.getImgname(vo.getId());
		System.out.println("id=>"+service.getImgname(vo.getId()));
		//최종 사용할 파일명정리하는 컬렉션
		List<String> editFileList = new ArrayList<String>();
		//DB에서 선택한 파일을 컬렉션에 담기
		if(dbFile.getImg()!=null) {
			editFileList.add(dbFile.getImg());
		}
		//삭제파일명과 같은 파일을 최종컬렉션에서 제거
		if(vo.getDelImg()!=null) {
			for(String del : vo.getDelImg()) {
				editFileList.remove(del);
			}
		}

		//업로드할 위치의 절대경로
		String path = request.getServletContext().getRealPath("/profileImg");
		System.out.println("path=>"+path);
		//새로 업로드한 파일명 보관할 컬렉션
		List<String> newUpload = new ArrayList<String>();
		
		//스크립트 넣을 변수 선언
		String msg = "";
		try {
			//1. UserVO에 회원정보 request되어 있다
			//2. 클라이언트 컴퓨터에 있는 파일이 서버로 복사하기 위해서는 MultipartHttpServletRequest 객체를 request 객체에서 타입캐스팅으로 구한다.
			MultipartHttpServletRequest mr = (MultipartHttpServletRequest)request;
			
			List<MultipartFile> newMf = mr.getFiles("fname");
			if(newMf!=null) {//업로드한 파일이 있을 때
				for(int i=0;i<newMf.size();i++) {
					MultipartFile mf = newMf.get(i);
					String org_filename = mf.getOriginalFilename();//업로드파일의 실제 파일명
					System.out.println("원래파일명 : " + org_filename);
					
					//이미 파일명이 존재할 경우 형식 : 파일명(1).jpg
					if(org_filename!=null && !org_filename.equals("")) {//있을 떄
						File file = new File(path, org_filename);
						if(file.exists()) {
							for(int j=1;;j++) {
								int dot = org_filename.lastIndexOf(".");
								String filenameNoExt = org_filename.substring(0, dot);
								String ext = org_filename.substring(dot+1);
								String renameFilename = filenameNoExt+"("+j+")."+ext;
								file = new File(path, renameFilename);
								if(!file.exists()) {//없으면 파일명을 만들필요X
									org_filename = renameFilename;
									break;
								}
							}
						}
						//파일 업로드 실행
						mf.transferTo(file);
						newUpload.add(file.getName());
						editFileList.add(file.getName());
					}
				}
			}
			//DB등록
			
			for(int i=0; i<editFileList.size();i++) {
				if(i==0) vo.setImg(editFileList.get(0));
			}
			vo.setId((String)request.getSession().getAttribute("logId"));
			int result = service.profileUpdate(vo);
			if(result>0) {
				if(vo.getDelImg()!=null) {
					for(String f : vo.getDelImg()) {
						fileDelete(path, f);
					}
				}
				//나의 정보 페이지로 이동
				msg += "<script>";
				msg += "alert('나의 정보가 수정되었습니다.')";
				msg += "location.href='/mypage/myInfo';";
				msg += "</script>";
			}else {//수정실패
				throw new Exception();
			}
			
		}catch(Exception e) {
			e.printStackTrace();
			//등록실패
			for(String f : newUpload) {
				fileDelete(path, f);
			}
			msg += "<script>";
			msg += "alert('내정보 수정에 실패하였습니다.');";
			msg += "history.back();";
			msg += "</script>";
		}
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(new MediaType("text", "html", Charset.forName("UTF-8")));
		headers.add("Content-Type", "text/html; charset=UTF-8");
		
		ResponseEntity<String> entity = new ResponseEntity<String>(msg, headers, HttpStatus.OK);
		return entity;
	}
	
	public void fileDelete(String path, String filename) {
		try {
			if(filename!=null) {
				File file = new File(path, filename);
				file.delete();
			}
		}catch(Exception e) {
			
		}
	}
	
	//2. 나의 예매내역
	@GetMapping("myReservation")
	public ModelAndView myReservation() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("mypage/myReservation");
		return mav;
	}
	
	//3. 나의 찜 목록 페이지
	@GetMapping("myHeartList")
	public ModelAndView myHeartList() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("mypage/myHeartList");
		return mav;
	}
	
	//4. 나의 게시글 페이지
	@GetMapping("myBoard")
	public ModelAndView myBoard() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("mypage/myBoard");
		return mav;
	}
	
	//5. 나의 댓글 페이지
	@GetMapping("myComment")
	public ModelAndView myComment() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("mypage/myComment");
		return mav;
	}
	
	//6. 나의 문의 페이지
	@GetMapping("myQna")
	public ModelAndView myQna() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("mypage/myQna");
		return mav;
	}
}
