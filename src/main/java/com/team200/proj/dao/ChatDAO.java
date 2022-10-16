package com.team200.proj.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.team200.proj.vo.chatRoomVO;
import com.team200.proj.vo.chatVO;

@Mapper
@Repository
public interface ChatDAO {
	public int registChat(chatVO cvo);
	public int registChatRoom(chatVO cvo);
	public int addChat(chatVO cvo);
	public chatVO getChat(String userid);
	public List<chatRoomVO> getChatRoomList(String roomId);
}
