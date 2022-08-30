package com.one.kcar.dto.buy;


public class StoreDTO {
//	st_name	varchar2(30)	not null	직영점이름
//	st_addr	varchar2(300)	not null	직영주소
//	st_tel	varchar2(15)	not null	연락
//	st_photo	varchar2(150)	null	직영사진
	private String st_name;
	private String st_addr;
	private String st_tel;
	private String st_photo;
	
	public String getSt_name() {
		return st_name;
	}
	public void setSt_name(String st_name) {
		this.st_name = st_name;
	}
	public String getSt_addr() {
		return st_addr;
	}
	public void setSt_addr(String st_addr) {
		this.st_addr = st_addr;
	}
	public String getSt_tel() {
		return st_tel;
	}
	public void setSt_tel(String st_tel) {
		this.st_tel = st_tel;
	}
	public String getSt_photo() {
		return st_photo;
	}
	public void setSt_photo(String st_photo) {
		this.st_photo = st_photo;
	}
	
	
}
