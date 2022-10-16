package com.team200.proj.vo;


public class PagingVO {
	private int nowPage = 1;//현재페이지 정보
	private int onePageRecord =10;//한페이지에 출력할 레코드 수
	private int totalRecord;//총 레코드 수
	private int totalPage;//총 페이지 수
	private int offsetPoint;//페이지레코드 선택할 위치
	//페이지번호
	private int startPage =1;
	private int onePageCount = 5;
	//검색
	private String searchKey;
	private String searchWord;

	private String searchKey2;
	private String searchWord2;
	
	private int nowPage2 = 1;//현재페이지 정보
	private int onePageRecord2 =10;//한페이지에 출력할 레코드 수
	private int totalRecord2;//총 레코드 수
	private int totalPage2;//총 페이지 수
	private int offsetPoint2;//페이지레코드 선택할 위치
	//페이지번호
	private int startPage2 =1;
	private int onePageCount2 = 5;
	

	@Override
	public String toString() {
		return "PagingVO [nowPage=" + nowPage + ", onePageRecord=" + onePageRecord + ", totalRecord=" + totalRecord
				+ ", totalPage=" + totalPage + ", offsetPoint=" + offsetPoint + ", startPage=" + startPage
				+ ", onePageCount=" + onePageCount + ", searchKey=" + searchKey + ", searchWord=" + searchWord
				+ ", searchKey2=" + searchKey2 + ", searchWord2=" + searchWord2 + ", nowPage2=" + nowPage2
				+ ", onePageRecord2=" + onePageRecord2 + ", totalRecord2=" + totalRecord2 + ", totalPage2=" + totalPage2
				+ ", offsetPoint2=" + offsetPoint2 + ", startPage2=" + startPage2 + ", onePageCount2=" + onePageCount2
				+ "]";
	}
	public int getNowPage() {
		return nowPage;
	}
	public void setNowPage(int nowPage) {
		this.nowPage = nowPage;
		//선택레코드 시작위치
		offsetPoint = (nowPage-1)*onePageRecord;
		//표시할 페이지의 시작번호
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
		//총페이지수 구하기
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

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getOnePageCount() {
		return onePageCount;
	}

	public void setOnePageCount(int onePageCount) {
		this.onePageCount = onePageCount;
	}

	public String getSearchKey() {
		return searchKey;
	}
	public void setSearchKey(String searchKey) {
		this.searchKey = searchKey;
	}
	public String getSearchWord() {
		return searchWord;
	}
	public void setSearchWord(String searchWord) {
		this.searchWord = searchWord;
	}
	public String getSearchKey2() {
		return searchKey2;
	}
	public void setSearchKey2(String searchKey2) {
		this.searchKey2 = searchKey2;
	}
	public String getSearchWord2() {
		return searchWord2;
	}
	public void setSearchWord2(String searchWord2) {
		this.searchWord2 = searchWord2;
	}
	public int getNowPage2() {
		return nowPage2;
	}
	public void setNowPage2(int nowPage2) {
		this.nowPage2 = nowPage2;
		//선택레코드 시작위치
		offsetPoint2 = (nowPage2-1)*onePageRecord2;
		//표시할 페이지의 시작번호
		startPage2 = (nowPage2-1)/onePageCount2*onePageCount2+1;
	}
	public int getOnePageRecord2() {
		return onePageRecord2;
	}
	public void setOnePageRecord2(int onePageRecord2) {
		this.onePageRecord2 = onePageRecord2;
	}
	public int getTotalRecord2() {
		return totalRecord2;
	}
	public void setTotalRecord2(int totalRecord2) {
		this.totalRecord2 = totalRecord2;
		//총페이지수 구하기
		totalPage2 = totalRecord2/onePageRecord2;
		if(totalRecord2%onePageRecord2!=0) {
			totalPage2++;
		}
	}
	public int getTotalPage2() {
		return totalPage2;
	}
	public void setTotalPage2(int totalPage2) {
		this.totalPage2 = totalPage2;
	}
	public int getOffsetPoint2() {
		return offsetPoint2;
	}
	public void setOffsetPoint2(int offsetPoint2) {
		this.offsetPoint2 = offsetPoint2;
	}
	public int getStartPage2() {
		return startPage2;
	}
	public void setStartPage2(int startPage2) {
		this.startPage2 = startPage2;
	}
	public int getOnePageCount2() {
		return onePageCount2;
	}
	public void setOnePageCount2(int onePageCount2) {
		this.onePageCount2 = onePageCount2;
	}



	
}
