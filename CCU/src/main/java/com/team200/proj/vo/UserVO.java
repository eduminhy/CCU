package com.team200.proj.vo;

import java.util.Date;
//15개
public class UserVO {
	private String user_id;
	private String user_username;
	private int user_role;
	private String user_nickname;
	private String user_phonenum;
	private Date user_register_date;
	private String user_gender;
	private Date user_birth;
	private String user_addr;
	private int user_agree_to_receive_email;
	private int user_agree_to_receive_msg;
	private String user_ip;
	private String user_route;
	private int user_self_certification;
	private String user_self_certification_num;
	
	
	
	@Override
	public String toString() {
		return "UserVO [user_id=" + user_id + ", user_username=" + user_username + ", user_role=" + user_role
				+ ", user_nickname=" + user_nickname + ", user_phonenum=" + user_phonenum + ", user_register_date="
				+ user_register_date + ", user_gender=" + user_gender + ", user_birth=" + user_birth + ", user_addr="
				+ user_addr + ", user_agree_to_receive_email=" + user_agree_to_receive_email
				+ ", user_agree_to_receive_msg=" + user_agree_to_receive_msg + ", user_ip=" + user_ip + ", user_route="
				+ user_route + ", user_self_certification=" + user_self_certification + ", user_self_certification_num="
				+ user_self_certification_num + "]";
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_username() {
		return user_username;
	}
	public void setUser_username(String user_username) {
		this.user_username = user_username;
	}
	public int getUser_role() {
		return user_role;
	}
	public void setUser_role(int user_role) {
		this.user_role = user_role;
	}
	public String getUser_nickname() {
		return user_nickname;
	}
	public void setUser_nickname(String user_nickname) {
		this.user_nickname = user_nickname;
	}
	public String getUser_phonenum() {
		return user_phonenum;
	}
	public void setUser_phonenum(String user_phonenum) {
		this.user_phonenum = user_phonenum;
	}
	public Date getUser_register_date() {
		return user_register_date;
	}
	public void setUser_register_date(Date user_register_date) {
		this.user_register_date = user_register_date;
	}
	public String getUser_gender() {
		return user_gender;
	}
	public void setUser_gender(String user_gender) {
		this.user_gender = user_gender;
	}
	public Date getUser_birth() {
		return user_birth;
	}
	public void setUser_birth(Date user_birth) {
		this.user_birth = user_birth;
	}
	public String getUser_addr() {
		return user_addr;
	}
	public void setUser_addr(String user_addr) {
		this.user_addr = user_addr;
	}
	public int getUser_agree_to_receive_email() {
		return user_agree_to_receive_email;
	}
	public void setUser_agree_to_receive_email(int user_agree_to_receive_email) {
		this.user_agree_to_receive_email = user_agree_to_receive_email;
	}
	public int getUser_agree_to_receive_msg() {
		return user_agree_to_receive_msg;
	}
	public void setUser_agree_to_receive_msg(int user_agree_to_receive_msg) {
		this.user_agree_to_receive_msg = user_agree_to_receive_msg;
	}
	public String getUser_ip() {
		return user_ip;
	}
	public void setUser_ip(String user_ip) {
		this.user_ip = user_ip;
	}
	public String getUser_route() {
		return user_route;
	}
	public void setUser_route(String user_route) {
		this.user_route = user_route;
	}
	public int getUser_self_certification() {
		return user_self_certification;
	}
	public void setUser_self_certification(int user_self_certification) {
		this.user_self_certification = user_self_certification;
	}
	public String getUser_self_certification_num() {
		return user_self_certification_num;
	}
	public void setUser_self_certification_num(String user_self_certification_num) {
		this.user_self_certification_num = user_self_certification_num;
	}
		
	
}
