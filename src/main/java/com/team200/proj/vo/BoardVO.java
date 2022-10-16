package com.team200.proj.vo;

import java.util.List;

public class BoardVO {
	private int id;
	private String user_id;
	private String showdb_id;
	private String title;
	private String content;
	private String writedate;
	private int hit;
	
	private String genre;
	//여러개의 레코드 번호를 저장할 컬렉션
	private List<Integer> noList;
	
	
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
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public List<Integer> getNoList() {
		return noList;
	}
	public void setNoList(List<Integer> noList) {
		this.noList = noList;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	
	
}
