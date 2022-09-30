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
	public MeetingVO mainMeetingGet(Long id) {
		// TODO Auto-generated method stub
		return dao.mainMeetingGet();
	}

	@Override
	public List<MeetingVO> mainMeeting() {
		// TODO Auto-generated method stub
		return dao.mainMeeting();
	}

	@Override
	public List<MeetingVO> mainMeetingGenre(String genre) {
		// TODO Auto-generated method stub
		return dao.mainMeetingGenre(genre);
	}

	@Override
	public List<MeetingVO> mainMeetingGenre2(String genre1, String genre2) {
		// TODO Auto-generated method stub
		return dao.mainMeetingGenre2(genre1, genre2);
	}

	@Override
	public int meetingWriteOk(MeetingVO vo) {
		// TODO Auto-generated method stub
		return dao.meetingWriteOk(vo);
	}
	@Override
	public List<MeetingVO> playMeetingList() {
		// TODO Auto-generated method stub
		return dao.playMeetingList();
	}

	@Override
	public int meetingEdit(MeetingVO vo, String user_id) {
		// TODO Auto-generated method stub
		return dao.meetingEdit(vo, user_id);
	}

	@Override
	public void meetingDelete(Long id, String user_id) {
		// TODO Auto-generated method stub
		dao.meetingDelete(id);
	}

}
