package com.team200.proj.vo;

import java.util.List;

public class chatVO {
	
	private String chat_room_id;
	private String send_user_id;
	
	private String chat_info;
	
	public String getChat_info() {
		return chat_info;
	}
	public void setChat_info(String chat_info) {
		this.chat_info = chat_info;
	}
	private int chat_role;
	
	@Override
	public String toString() {
		return "chatVO [chat_room_id=" + chat_room_id + ",  send_user_id="
				+ send_user_id + "]";
	}
	public String getChat_room_id() {
		return chat_room_id;
	}
	public void setChat_room_id(String chat_room_id) {
		this.chat_room_id = chat_room_id;
	}
	public int getChat_role() {
		return chat_role;
	}
	public void setChat_role(int chat_role) {
		this.chat_role = chat_role;
	}
	public String getSend_user_id() {
		return send_user_id;
	}
	public void setSend_user_id(String send_user_id) {
		this.send_user_id = send_user_id;
	}
}
