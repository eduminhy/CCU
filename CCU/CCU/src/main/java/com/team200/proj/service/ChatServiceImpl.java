package com.team200.proj.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team200.proj.dao.ChatDAO;
import com.team200.proj.vo.chatRoomVO;
import com.team200.proj.vo.chatVO;

@Service
public class ChatServiceImpl implements ChatService {

	@Inject
	ChatDAO chatDao;
	
	@Override
	public boolean registChat(chatVO cvo) {
		boolean result = true;
		
		chatDao.registChat(cvo);
		
		return result;
	}
	
	@Override
	public boolean registChatRoom(chatVO cvo) {
		boolean result = true;
		
		chatDao.registChatRoom(cvo);
		
		return result;
	}
	
	@Override
	public boolean addChat(chatVO cvo) {
		boolean result = true;
		chatDao.addChat(cvo);
		return result;
	}

	@Override
	public chatVO getChat(String userid) {
		return chatDao.getChat(userid);
	}
	
	@Override
	public List<chatRoomVO> getChatRoomList(String roomId) {
		return chatDao.getChatRoomList(roomId);
	}
	
}
