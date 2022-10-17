package com.team200.proj.vo;

import java.util.List;

public class chatVO {
	
	private String chat_room_id;
	private String send_user_id;
	
	private String chat_info;
	private String username;
	private String update_date;
	
	
	
	public String getUpdate_date() {
		return update_date;
	}
	public void setUpdate_date(String update_date) {
		this.update_date = update_date;
	}
	public String getChat_info() {
		return chat_info;
	}
	public void setChat_info(String chat_info) {
		this.chat_info = chat_info;
	}
	private int chat_role;
	
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
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
