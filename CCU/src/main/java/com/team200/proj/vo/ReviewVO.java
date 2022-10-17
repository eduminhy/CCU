package com.team200.proj.vo;

import java.util.List;

public class ReviewVO {
	private int id;
	private String user_id;
	private String showdb_id;

	private String content;
	private String writedate;
	private String rate;
	private String viewdate;
	private String order_list_no;
	private String mainposter;
	private String name;
	private String show_id;
	
	private List<Integer> noList;
	private String order_no;

	
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
	public String getRate() {
		return rate;
	}
	public void setRate(String rate) {
		this.rate = rate;
	}
	public String getViewdate() {
		return viewdate;
	}
	public void setViewdate(String viewdate) {
		this.viewdate = viewdate;
	}
	public String getOrder_list_no() {
		return order_list_no;
	}
	public void setOrder_list_no(String order_list_no) {
		this.order_list_no = order_list_no;
	}
	public String getMainposter() {
		return mainposter;
	}
	public void setMainposter(String mainposter) {
		this.mainposter = mainposter;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getShow_id() {
		return show_id;
	}
	public void setShow_id(String show_id) {
		this.show_id = show_id;
	}
	public List<Integer> getNoList() {
		return noList;
	}
	public void setNoList(List<Integer> noList) {
		this.noList = noList;
	}
	public String getOrder_no() {
		return order_no;
	}
	public void setOrder_no(String order_no) {
		this.order_no = order_no;
	}
	
	
}
