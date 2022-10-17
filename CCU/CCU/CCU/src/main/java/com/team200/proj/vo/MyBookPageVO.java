package com.team200.proj.vo;

public class MyBookPageVO {

	private int nowPage=1;
	private int onePageRecord=5;
	private int totalRecord;
	private int totalPage;
	private int offsetPoint;
	
	private int onePageCount=5;
	private int startPage=1;
	
	
	@Override
	public String toString() {
		return "MyBookPageVO [nowPage=" + nowPage + ", onePageRecord=" + onePageRecord + ", totalRecord=" + totalRecord
				+ ", totalPage=" + totalPage + ", offsetPoint=" + offsetPoint + ", onePageCount=" + onePageCount
				+ ", startPage=" + startPage + "]";
	}
	
	public int getNowPage() {
		return nowPage;
	}
	public void setNowPage(int nowPage) {
		this.nowPage = nowPage;
		offsetPoint = (nowPage-1)*onePageRecord;
		startPage = (nowPage-1)/onePageCount*onePageCount+1;
	}
	public int getOnePageRecord() {
		return onePageRecord;
	}
	public void setOnePageRecord(int onePageRecord) {
		this.onePageRecord = onePageRecord;
	}
	public int getTotalRecord() {
		return totalRecord;
	}
	public void setTotalRecord(int totalRecord) {
		this.totalRecord = totalRecord;
		totalPage = totalRecord/onePageRecord;
		if(totalRecord%onePageRecord!=0) {
			totalPage++;
		}
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public int getOffsetPoint() {
		return offsetPoint;
	}
	public void setOffsetPoint(int offsetPoint) {
		this.offsetPoint = offsetPoint;
	}
	public int getOnePageCount() {
		return onePageCount;
	}
	public void setOnePageCount(int onePageCount) {
		this.onePageCount = onePageCount;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	
}
