package com.team200.proj.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.team200.proj.vo.MeetingVO;

@Mapper
@Repository
public interface MeetingDAO {
	
	public List<MeetingVO> mainMeeting();

	public int meetingWriteOk(MeetingVO vo);
}
