package com.one.kcar.dto.buy;

public class BuyReviewDTO {
//	kcar_buy_review	member->buy		
//	Column 명	자료형	옵션	비교
//	c_c_index	number(6)	foreign key not null	인덱스번호(게시글 번호)
//	m_r_title	varchar2(100)	not null	제목
//	m_r_review	varchar2(1500)	not null	구매후기
//	m_r_registDate	varchar2(20)	not null	등록일자
//	m_r_photo	varchar2(150)	not null	이미지
	private int c_c_index;
	private String m_r_title;
	private String m_r_review;
	private String m_r_registDate;
	private String m_r_photo;
	
	private String cb_brand;
	private String cb_m_model;
	
	
	public String getCb_brand() {
		return cb_brand;
	}
	public void setCb_brand(String cb_brand) {
		this.cb_brand = cb_brand;
	}
	public String getCb_m_model() {
		return cb_m_model;
	}
	public void setCb_m_model(String cb_m_model) {
		this.cb_m_model = cb_m_model;
	}
	public int getC_c_index() {
		return c_c_index;
	}
	public void setC_c_index(int c_c_index) {
		this.c_c_index = c_c_index;
	}
	public String getM_r_title() {
		return m_r_title;
	}
	public void setM_r_title(String m_r_title) {
		this.m_r_title = m_r_title;
	}
	public String getM_r_review() {
		return m_r_review;
	}
	public void setM_r_review(String m_r_review) {
		this.m_r_review = m_r_review;
	}
	public String getM_r_registDate() {
		return m_r_registDate;
	}
	public void setM_r_registDate(String m_r_registDate) {
		this.m_r_registDate = m_r_registDate;
	}
	public String getM_r_photo() {
		return m_r_photo;
	}
	public void setM_r_photo(String m_r_photo) {
		this.m_r_photo = m_r_photo;
	}
	
	
	
}
