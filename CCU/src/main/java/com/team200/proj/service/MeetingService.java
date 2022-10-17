package com.team200.proj.service;

import java.util.List;

import com.team200.proj.vo.MeetingVO;
import com.team200.proj.vo.showVO;

public interface MeetingService {

	public MeetingVO mainMeetingGet(Long id);

	public List<MeetingVO> mainMeeting(int opr, int offp);

	public List<MeetingVO> searchByTitle(String title);

	public List<MeetingVO> mainMeetingGenre(String genre);

	public List<MeetingVO> mainMeetingGenre2(String genre1, String genre2);
	
	public List<MeetingVO> playMeetingList();
	
	public int meetingWriteOk(MeetingVO vo);

	public int meetingEdit(MeetingVO vo);

	public void meetingDelete(Long id);
	
	public List<showVO> showSearch(String name);

	public List<showVO> showModalAll();

    public List<showVO> showModal(String name);

    public MeetingVO meetingView(Long id);
    
    public void setReport(int id,String content,String logid);
    
    public int totalRecord();
}
