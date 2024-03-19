package com.cyb.dto;

/** Table의 record 하나 객체화**/
public class MemberVo {

	private int Idx = 0;
	private String ID = null;
	private String pw = null;

	
	public MemberVo() {
	}
	
	public int getIdx() {
		return Idx;
	}
	public void setIdx(int idx) {
		Idx = idx;
	}
	public String getID() {
		return ID;
	}
	public void setID(String iD) {
		ID = iD;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	
	
	@Override
	public String toString() {
		return "MemberVo [Idx=" + Idx + ", ID=" + ID + ", pw=" + pw + "]";
	}
}
