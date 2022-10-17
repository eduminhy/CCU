package com.team200.proj.vo;

import java.util.List;

public class ReplyVO {
	private int id;
	private int board_id;
	private String user_id;
	private String content;
	private String writedate;
	private String pord;
	private String dept;
	
	private String genre;
	//여러개의 레코드 번호를 저장할 컬렉션
	private List<Integer> noList;

	@Override
	public String toString() {
		return "ReplyVO [id=" + id + ", board_id=" + board_id + ", user_id=" + user_id + ", content=" + content
				+ ", writedate=" + writedate + ", pord=" + pord + ", dept=" + dept + ", genre=" + genre + ", noList="
				+ noList + "]";
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getBoard_id() {
		return board_id;
	}

	public void setBoard_id(int board_id) {
		this.board_id = board_id;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
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

	public String getPord() {
		return pord;
	}

	public void setPord(String pord) {
		this.pord = pord;
	}

	public String getDept() {
		return dept;
	}

	public void setDept(String dept) {
		this.dept = dept;
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
