package com.team200.proj.vo;

import java.util.List;

public class ReportVO {
	private int id;
	private String user_id;
	private String showdb_id;
	private String title;
	private String content;
	private String writedate;
	private String rcontent;
	private String type;
	private int hit;
	private String show_id;
	
	private int postnum;
	private String user_id2;
	private String genre;
	//여러개의 레코드 번호를 저장할 컬렉션
	private List<Integer> noList;
	private String order_list_no;
	
	
	public String getUser_id2() {
		return user_id2;
	}
	public void setUser_id2(String user_id2) {
		this.user_id2 = user_id2;
	}
	public int getPostnum() {
		return postnum;
	}
	public void setPostnum(int postnum) {
		this.postnum = postnum;
	}
	public String getOrder_list_no() {
		return order_list_no;
	}
	public void setOrder_list_no(String order_list_no) {
		this.order_list_no = order_list_no;
	}
	public String getShow_id() {
		return show_id;
	}
	public void setShow_id(String show_id) {
		this.show_id = show_id;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getShowdb_id() {
		return showdb_id;
	}
	public void setShowdb_id(String showdb_id) {
		this.showdb_id = showdb_id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWritedate() {
		return writedate;
	}
	public void setWritedate(String writedate) {
		this.writedate = writedate;
	}
	public String getRcontent() {
		return rcontent;
	}
	public void setRcontent(String rcontent) {
		this.rcontent = rcontent;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public List<Integer> getNoList() {
		return noList;
	}
	public void setNoList(List<Integer> noList) {
		this.noList = noList;
	}
	
	
	
	
}
