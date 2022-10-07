package com.team200.proj.vo;



public class MeetingVO {
	
	private Long id;
	private String user_id;
	private String showdb_id;
	private String title;
	private String content;
	private String writedate;
	private int hit;
	private String genre;
	private String name;



	@Override
	public String toString() {
		return "MeetingVO [id=" + id + ", user_id=" + user_id + ", showdb_id=" + showdb_id + ", title=" + title
				+ ", content=" + content + ", writedate=" + writedate + ", hit=" + hit + ", genre=" + genre + "]";
	}

	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
}