package com.team200.proj.service;

import java.util.List;

import com.team200.proj.vo.MeetingVO;

public interface MeetingService {
	
	public List<MeetingVO> mainMeeting();
	
	public int meetingWriteOk(MeetingVO vo);
}
