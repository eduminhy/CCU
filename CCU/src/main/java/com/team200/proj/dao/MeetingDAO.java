package com.team200.proj.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.team200.proj.vo.MeetingVO;
import com.team200.proj.vo.showVO;

@Mapper
@Repository
public interface MeetingDAO {

	public MeetingVO mainMeetingGet(Long id);

	public List<MeetingVO> mainMeeting();

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

}
