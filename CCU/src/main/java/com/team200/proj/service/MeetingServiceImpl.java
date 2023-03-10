package com.team200.proj.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.team200.proj.dao.MeetingDAO;
import com.team200.proj.vo.MeetingVO;
import com.team200.proj.vo.showVO;

@Service
public class MeetingServiceImpl implements MeetingService {
	@Inject
	MeetingDAO dao;

	@Override
	public MeetingVO mainMeetingGet(Long id) {
		// TODO Auto-generated method stub
		return dao.mainMeetingGet(id);
	}

	@Override
	public List<MeetingVO> mainMeeting(int opr, int offp) {
		// TODO Auto-generated method stub
		return dao.mainMeeting(opr, offp);
	}

	@Override
	public List<MeetingVO> searchByTitle(String title, int opr, int offp) {
		// TODO Auto-generated method stub
		return dao.searchByTitle(title, opr, offp);
	}

	@Override
	public List<MeetingVO> mainMeetingGenre(String genre, int opr, int offp) {
		// TODO Auto-generated method stub
		return dao.mainMeetingGenre(genre, opr, offp);
	}

	@Override
	public List<MeetingVO> mainMeetingGenre2(String genre1, String genre2, int opr, int offp) {
		// TODO Auto-generated method stub
		return dao.mainMeetingGenre2(genre1, genre2, opr, offp);
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
	public int meetingEdit(MeetingVO vo) {
		// TODO Auto-generated method stub
		return dao.meetingEdit(vo);
	}

	@Override
	public void meetingDelete(Long id) {
		// TODO Auto-generated method stub
		dao.meetingDelete(id);
	}
	@Override
	public List<showVO> showSearch(String name) {
		// TODO Auto-generated method stub
		return dao.showSearch(name);
	}

	@Override
	public List<showVO> showModalAll() {
		// TODO Auto-generated method stub
		return dao.showModalAll();
	}

	@Override
	public List<showVO> showModal(String name) {
		// TODO Auto-generated method stub
		return dao.showModal(name);
	}

	@Override
	public MeetingVO meetingView(Long id) {
		// TODO Auto-generated method stub
		return dao.meetingView(id);
	}

	@Override
	public void setReport(int id, String content, String logid) {
		// TODO Auto-generated method stub
		dao.setReport(id,content,logid);
	}

	@Override
	public int totalRecord() {
		return dao.totalRecord();
	}

	@Override
	public int totalSearchRecord(String title) {
		return dao.totalSearchRecord(title);
	}

	@Override
	public int totlaPlayRecord(String genre) {
		return dao.totlaPlayRecord(genre);
	}

	@Override
	public int totalOperaRecord() {
		return dao.totalOperaRecord();
	}

	@Override
	public int totalPlaySearchRecord(String genre, String title) {
		return dao.totalPlaySearchRecord(genre, title);
	}

	@Override
	public int totalOperaSearchRecord(String title) {
		return dao.totalOperaSearchRecord(title);
	}
}
