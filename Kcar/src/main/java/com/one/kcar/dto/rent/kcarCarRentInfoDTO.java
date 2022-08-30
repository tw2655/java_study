package com.one.kcar.dto.rent;
/*
 * CREATE TABLE kcarCarRentInfo(
crNumber varchar2(10) not null,
m_id number(6) not null,
m_email varchar2(30) not null,
criRentStart varchar2(10) not null,
criRentEnd varchar2(10) not null,
constraint fkCr2 foreign key (crNumber) references kcarCarRent (crNumber) on delete cascade,
constraint fkmr foreign key (m_id, m_email) references KCAR_MEMBER(m_id, m_email) on delete cascade
);
 */
public class kcarCarRentInfoDTO /*extends kcarCarRentDTO*/ {

	private String crNumber;
	private int m_id;
	private String m_email;
	private String criRentStart;
	private String criRentEnd;
	
	public String getCrNumber() {
		return crNumber;
	}
	public void setCrNumber(String crNumber) {
		this.crNumber = crNumber;
	}
	public int getM_id() {
		return m_id;
	}
	public void setM_id(int m_id) {
		this.m_id = m_id;
	}
	public String getM_email() {
		return m_email;
	}
	public void setM_email(String m_email) {
		this.m_email = m_email;
	}
	public String getCriRentStart() {
		return criRentStart;
	}
	public void setCriRentStart(String criRentStart) {
		this.criRentStart = criRentStart;
	}
	public String getCriRentEnd() {
		return criRentEnd;
	}
	public void setCriRentEnd(String criRentEnd) {
		this.criRentEnd = criRentEnd;
	}
	
	
	
}
