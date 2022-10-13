package com.team200.proj.vo;

import java.util.List;

public class BookVO {
	private String imp_uid;
	private String orderno;
	private String applynum;
	private String price;
	private String addr;
	private String email;
	private List<String> seatNum;
	private String seatCnt;
	private String scheduleDate_id;
	
	public String getImp_uid() {
		return imp_uid;
	}
	public void setImp_uid(String imp_uid) {
		this.imp_uid = imp_uid;
	}
	public String getOrderno() {
		return orderno;
	}
	public void setOrderno(String orderno) {
		this.orderno = orderno;
	}
	public String getApplynum() {
		return applynum;
	}
	public void setApplynum(String applynum) {
		this.applynum = applynum;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public List<String> getSeatNum() {
		return seatNum;
	}
	public void setSeatNum(List<String> seatNum) {
		this.seatNum = seatNum;
	}
	public String getSeatCnt() {
		return seatCnt;
	}
	public void setSeatCnt(String seatCnt) {
		this.seatCnt = seatCnt;
	}
	public String getScheduleDate_id() {
		return scheduleDate_id;
	}
	public void setScheduleDate_id(String scheduleDate_id) {
		this.scheduleDate_id = scheduleDate_id;
	}
	@Override
	public String toString() {
		return "BookVO [imp_uid=" + imp_uid + ", orderno=" + orderno + ", applynum=" + applynum + ", price=" + price
				+ ", addr=" + addr + ", email=" + email + ", seatNum=" + seatNum + ", seatCnt=" + seatCnt
				+ ", scheduleDate_id=" + scheduleDate_id + "]";
	}
	
	
	
}
