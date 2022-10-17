package com.team200.proj.vo;

public class AdminBookPageVO {

	private int booknowPage=1;
	private int bookonePageRecord=10;
	private int booktotalRecord;
	private int booktotalPage;
	private int bookoffsetPoint;
	
	private int bookonePageCount=5;
	private int bookstartPage=1;
	
	private String booksearchKey;
	private String booksearchWord;
	
	public int getBooknowPage() {
		return booknowPage;
	}
	public void setBooknowPage(int booknowPage) {
		this.booknowPage = booknowPage;
		//선택레코드 시작위치
		bookoffsetPoint = (booknowPage-1)*bookonePageRecord;
		//표시할 페이지의 시작번호
		bookstartPage = (booknowPage-1)/bookonePageCount*bookonePageCount+1;
	}
	public int getBookonePageRecord() {
		return bookonePageRecord;
	}
	public void setBookonePageRecord(int bookonePageRecord) {
		this.bookonePageRecord = bookonePageRecord;
	}
	public int getBooktotalRecord() {
		return booktotalRecord;
	}
	public void setBooktotalRecord(int booktotalRecord) {
		this.booktotalRecord = booktotalRecord;
		//총페이지 수 구하기
		booktotalPage = booktotalRecord/bookonePageRecord;
		if(booktotalRecord%bookonePageRecord!=0) {
			booktotalPage++;
		}	
	}
	public int getBooktotalPage() {
		return booktotalPage;
	}
	public void setBooktotalPage(int booktotalPage) {
		this.booktotalPage = booktotalPage;
	}
	public int getBookoffsetPoint() {
		return bookoffsetPoint;
	}
	public void setBookoffsetPoint(int bookoffsetPoint) {
		this.bookoffsetPoint = bookoffsetPoint;
	}
	public int getBookonePageCount() {
		return bookonePageCount;
	}
	public void setBookonePageCount(int bookonePageCount) {
		this.bookonePageCount = bookonePageCount;
	}
	public int getBookstartPage() {
		return bookstartPage;
	}
	public void setBookstartPage(int bookstartPage) {
		this.bookstartPage = bookstartPage;
	}
	public String getBooksearchKey() {
		return booksearchKey;
	}
	public void setBooksearchKey(String booksearchKey) {
		this.booksearchKey = booksearchKey;
	}
	public String getBooksearchWord() {
		return booksearchWord;
	}
	public void setBooksearchWord(String booksearchWord) {
		this.booksearchWord = booksearchWord;
	}
	
	

	
}
