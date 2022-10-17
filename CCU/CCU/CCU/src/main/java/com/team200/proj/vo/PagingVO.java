package com.team200.proj.vo;

public class PagingVO {
	private int nowPage = 1;// 현재페이지 정보
	private int onePageRecord = 10;// 한페이지에 출력할 레코드 수
	private int totalRecord;// 총 레코드 수
	private int totalPage;// 총 페이지 수
	private int offsetPoint;// 페이지레코드 선택할 위치
	// 페이지번호
	private int startPage = 1;
	private int onePageCount = 5;
	// 검색
	private String searchKey;
	private String searchWord;

	private String searchKey2;
	private String searchWord2;

	private int nowPage2 = 1;// 현재페이지 정보
	private int onePageRecord2 = 10;// 한페이지에 출력할 레코드 수
	private int totalRecord2;// 총 레코드 수
	private int totalPage2;// 총 페이지 수
	private int offsetPoint2;// 페이지레코드 선택할 위치
	// 페이지번호
	private int startPage2 = 1;
	private int onePageCount2 = 5;

	private String searchKey3;
	private String searchWord3;

	private int nowPage3 = 1;// 현재페이지 정보
	private int onePageRecord3 = 10;// 한페이지에 출력할 레코드 수
	private int totalRecord3;// 총 레코드 수
	private int totalPage3;// 총 페이지 수
	private int offsetPoint3;// 페이지레코드 선택할 위치
	// 페이지번호
	private int startPage3 = 1;
	private int onePageCount3 = 5;

	private String searchKey4;
	private String searchWord4;

	private int nowPage4 = 1;// 현재페이지 정보
	private int onePageRecord4 = 10;// 한페이지에 출력할 레코드 수
	private int totalRecord4;// 총 레코드 수
	private int totalPage4;// 총 페이지 수
	private int offsetPoint4;// 페이지레코드 선택할 위치
	// 페이지번호
	private int startPage4 = 1;
	private int onePageCount4 = 5;

	private String searchKey5;
	private String searchWord5;

	private int nowPage5 = 1;// 현재페이지 정보
	private int onePageRecord5 = 10;// 한페이지에 출력할 레코드 수
	private int totalRecord5;// 총 레코드 수
	private int totalPage5;// 총 페이지 수
	private int offsetPoint5;// 페이지레코드 선택할 위치
	// 페이지번호
	private int startPage5 = 1;
	private int onePageCount5 = 5;

	public String getSearchKey5() {
		return searchKey5;
	}

	public void setSearchKey5(String searchKey5) {
		this.searchKey5 = searchKey5;
	}

	public String getSearchWord5() {
		return searchWord5;
	}

	public void setSearchWord5(String searchWord5) {
		this.searchWord5 = searchWord5;
	}

	public int getNowPage5() {
		return nowPage5;
	}

	public void setNowPage5(int nowPage5) {
		this.nowPage5 = nowPage5;
		// 선택레코드 시작위치
		offsetPoint5 = (nowPage5 - 1) * onePageRecord5;
		// 표시할 페이지의 시작번호
		startPage5 = (nowPage5 - 1) / onePageCount5 * onePageCount5 + 1;

	}

	public int getOnePageRecord5() {
		return onePageRecord5;
	}

	public void setOnePageRecord5(int onePageRecord5) {
		this.onePageRecord5 = onePageRecord5;
	}

	public int getTotalRecord5() {
		return totalRecord5;
	}

	public void setTotalRecord5(int totalRecord5) {

		this.totalRecord5 = totalRecord5;
		// 총페이지수 구하기

		totalPage5 = totalRecord5 / onePageRecord5;
		if (totalRecord5 % onePageRecord5 != 0) {
			totalPage5++;
		}
	}

	public int getTotalPage5() {
		return totalPage5;
	}

	public void setTotalPage5(int totalPage5) {
		this.totalPage5 = totalPage5;
	}

	public int getOffsetPoint5() {
		return offsetPoint5;
	}

	public void setOffsetPoint5(int offsetPoint5) {
		this.offsetPoint5 = offsetPoint5;
	}

	public int getStartPage5() {
		return startPage5;
	}

	public void setStartPage5(int startPage5) {
		this.startPage5 = startPage5;
	}

	public int getOnePageCount5() {
		return onePageCount5;
	}

	public void setOnePageCount5(int onePageCount5) {
		this.onePageCount5 = onePageCount5;
	}

	public String getSearchKey4() {
		return searchKey4;
	}

	public void setSearchKey4(String searchKey4) {
		this.searchKey4 = searchKey4;
	}

	public String getSearchWord4() {
		return searchWord4;
	}

	public void setSearchWord4(String searchWord4) {
		this.searchWord4 = searchWord4;
	}

	public int getNowPage4() {
		return nowPage4;
	}

	public void setNowPage4(int nowPage4) {
		this.nowPage4 = nowPage4;
		// 선택레코드 시작위치
		offsetPoint4 = (nowPage4 - 1) * onePageRecord4;
		// 표시할 페이지의 시작번호
		startPage4 = (nowPage4 - 1) / onePageCount4 * onePageCount4 + 1;

	}

	public int getOnePageRecord4() {
		return onePageRecord4;
	}

	public void setOnePageRecord4(int onePageRecord4) {
		this.onePageRecord4 = onePageRecord4;
	}

	public int getTotalRecord4() {
		return totalRecord4;
	}

	public void setTotalRecord4(int totalRecord4) {

		this.totalRecord4 = totalRecord4;
		// 총페이지수 구하기

		totalPage4 = totalRecord4 / onePageRecord4;
		if (totalRecord4 % onePageRecord4 != 0) {
			totalPage4++;
		}
	}

	public int getTotalPage4() {
		return totalPage4;
	}

	public void setTotalPage4(int totalPage4) {
		this.totalPage4 = totalPage4;
	}

	public int getOffsetPoint4() {
		return offsetPoint4;
	}

	public void setOffsetPoint4(int offsetPoint4) {
		this.offsetPoint4 = offsetPoint4;
	}

	public int getStartPage4() {
		return startPage4;
	}

	public void setStartPage4(int startPage4) {
		this.startPage4 = startPage4;
	}

	public int getOnePageCount4() {
		return onePageCount4;
	}

	public void setOnePageCount4(int onePageCount4) {
		this.onePageCount4 = onePageCount4;
	}

	public String getSearchKey3() {
		return searchKey3;
	}

	public void setSearchKey3(String searchKey3) {
		this.searchKey3 = searchKey3;
	}

	public String getSearchWord3() {
		return searchWord3;
	}

	public void setSearchWord3(String searchWord3) {
		this.searchWord3 = searchWord3;
	}

	public int getOnePageRecord3() {
		return onePageRecord3;
	}

	public void setOnePageRecord3(int onePageRecord3) {
		this.onePageRecord3 = onePageRecord3;
	}

	public int getTotalRecord3() {
		return totalRecord3;
	}

	public void setTotalRecord3(int totalRecord3) {
		this.totalRecord3 = totalRecord3;
		// 총페이지수 구하기
		totalPage3 = totalRecord3 / onePageRecord3;
		if (totalRecord3 % onePageRecord3 != 0) {
			totalPage3++;
		}
	}

	public int getTotalPage3() {
		return totalPage3;
	}

	public void setTotalPage3(int totalPage3) {
		this.totalPage3 = totalPage3;
	}

	public int getOffsetPoint3() {
		return offsetPoint3;
	}

	public void setOffsetPoint3(int offsetPoint3) {
		this.offsetPoint3 = offsetPoint3;
	}

	public int getStartPage3() {
		return startPage3;
	}

	public void setStartPage3(int startPage3) {
		this.startPage3 = startPage3;
	}

	public int getOnePageCount3() {
		return onePageCount3;
	}

	public void setOnePageCount3(int onePageCount3) {
		this.onePageCount3 = onePageCount3;
	}

	public int getNowPage3() {
		return nowPage3;
	}

	public void setNowPage3(int nowPage3) {
		this.nowPage3 = nowPage3;
		// 선택레코드 시작위치
		offsetPoint3 = (nowPage3 - 1) * onePageRecord3;
		// 표시할 페이지의 시작번호
		startPage3 = (nowPage3 - 1) / onePageCount3 * onePageCount3 + 1;
	}

	public int getNowPage() {
		return nowPage;
	}

	public void setNowPage(int nowPage) {
		this.nowPage = nowPage;
		// 선택레코드 시작위치
		offsetPoint = (nowPage - 1) * onePageRecord;
		// 표시할 페이지의 시작번호
		startPage = (nowPage - 1) / onePageCount * onePageCount + 1;
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
		// 총페이지수 구하기
		totalPage = totalRecord / onePageRecord;
		if (totalRecord % onePageRecord != 0) {
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
		// 선택레코드 시작위치
		offsetPoint2 = (nowPage2 - 1) * onePageRecord2;
		// 표시할 페이지의 시작번호
		startPage2 = (nowPage2 - 1) / onePageCount2 * onePageCount2 + 1;
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
		// 총페이지수 구하기
		totalPage2 = totalRecord2 / onePageRecord2;
		if (totalRecord2 % onePageRecord2 != 0) {
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
