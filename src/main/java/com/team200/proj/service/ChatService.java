package com.team200.proj.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.team200.proj.vo.chatRoomVO;
import com.team200.proj.vo.chatVO;

public interface ChatService {

	@Autowired
	public boolean registChat(chatVO cvo);
	
	@Autowired
	public boolean registChatRoom(chatVO cvo);
	
	@Autowired
	public boolean addChat(chatVO cvo);
	
	@Autowired
	public chatVO getChat(String userid);
	
	@Autowired
	public List<chatRoomVO> getChatRoomList(String roomId);
}
