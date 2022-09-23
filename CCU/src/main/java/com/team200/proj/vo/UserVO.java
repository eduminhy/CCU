package com.team200.proj.vo;

import java.util.Date;
//18개
public class UserVO {
	private String id;
	private String password;
	private String username;
	private int role;
	private String nickname;
	private String img;
	
	private String tel;
	private String tel1;
	private String tel2;
	private String tel3;
	
	private String register_date;
	private String gender;
	private String birth;
	private String addr;
	private String zipcode;
	private String road_name;
	private int agree_to_receive_email;
	private int agree_to_receive_msg;
	private String route;
	private int self_certification;
	private String self_certification_num;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public int getRole() {
		return role;
	}
	public void setRole(int role) {
		this.role = role;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getTel() {
		return tel1+"-"+tel2+"-"+tel3;
	}
	public void setTel(String tel) {
		this.tel = tel;
		String telSplit[] = tel.split("-");
		tel1 = telSplit[0];
		tel2 = telSplit[1];
		tel3 = telSplit[2];
	}
	public String getTel1() {
		return tel1;
	}
	public void setTel1(String tel1) {
		this.tel1 = tel1;
	}
	public String getTel2() {
		return tel2;
	}
	public void setTel2(String tel2) {
		this.tel2 = tel2;
	}
	public String getTel3() {
		return tel3;
	}
	public void setTel3(String tel3) {
		this.tel3 = tel3;
	}
	public String getRegister_date() {
		return register_date;
	}
	public void setRegister_date(String register_date) {
		this.register_date = register_date;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getRoad_name() {
		return road_name;
	}
	public void setRoad_name(String road_name) {
		this.road_name = road_name;
	}
	public int getAgree_to_receive_email() {
		return agree_to_receive_email;
	}
	public void setAgree_to_receive_email(int agree_to_receive_email) {
		this.agree_to_receive_email = agree_to_receive_email;
	}
	public int getAgree_to_receive_msg() {
		return agree_to_receive_msg;
	}
	public void setAgree_to_receive_msg(int agree_to_receive_msg) {
		this.agree_to_receive_msg = agree_to_receive_msg;
	}
	public String getRoute() {
		return route;
	}
	public void setRoute(String route) {
		this.route = route;
	}
	public int getSelf_certification() {
		return self_certification;
	}
	public void setSelf_certification(int self_certification) {
		this.self_certification = self_certification;
	}
	public String getSelf_certification_num() {
		return self_certification_num;
	}
	public void setSelf_certification_num(String self_certification_num) {
		this.self_certification_num = self_certification_num;
	}
	
	
	
}
	

