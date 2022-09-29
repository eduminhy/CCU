package com.team200.proj.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.team200.proj.dao.MeetingDAO;
import com.team200.proj.vo.MeetingVO;

@Service
public class MeetingServiceImpl implements MeetingService {
	@Inject
	MeetingDAO dao;

	
	@Override
	public List<MeetingVO> mainMeeting() {
		// TODO Auto-generated method stub
		return dao.mainMeeting();
	}
	@Override
	public int meetingWriteOk(MeetingVO vo) {
		// TODO Auto-generated method stub
		return dao.meetingWriteOk(vo);
	}





}
