package com.team200.proj.service;

import java.util.List;

import com.team200.proj.vo.MeetingVO;
import com.team200.proj.vo.showVO;

public interface MeetingService {

	public MeetingVO mainMeetingGet(Long id);

	public List<MeetingVO> mainMeeting();

	public List<MeetingVO> mainMeetingGenre(String genre);

	public List<MeetingVO> mainMeetingGenre2(String genre1, String genre2);
	
	public List<MeetingVO> playMeetingList();
	
	public int meetingWriteOk(MeetingVO vo);

	public int meetingEdit(MeetingVO vo, String user_id);

	public void meetingDelete(Long id, String user_id);
	
	public List<showVO> showSearch(String name);

}
