package com.one.kcar.dto.cs;

public class CsDTO {
	
	
	/*
	 create table KCAR_SERVICE ( s_no number, s_category varchar2(25) not null,
	 s_title varchar2(100) not null, s_content varchar2(1500) not null, s_file
	 varchar2(150), s_id varchar2(20) not null, s_reply varchar2(1) not null,
	 s_replyValue varchar2(30), s_replyStatus varchar2(1) default 'n', primary
	 key(s_no) );
	 */
	 
	private int s_no;
	private String s_category;
	private String s_title;
	private String s_content;
	private String s_file;
	private String s_id;
	private String s_reply;
	private String s_replyValue;
	private String s_replyStatus;
	
	
	public int getS_no() {
		return s_no;
	}
	public void setS_no(int s_no) {
		this.s_no = s_no;
	}
	public String getS_replyValue() {
		return s_replyValue;
	}
	public void setS_replyValue(String s_replyValue) {
		this.s_replyValue = s_replyValue;
	}
	public String getS_category() {
		return s_category;
	}
	public void setS_category(String s_category) {
		this.s_category = s_category;
	}
	public String getS_title() {
		return s_title;
	}
	public void setS_title(String s_title) {
		this.s_title = s_title;
	}
	public String getS_content() {
		return s_content;
	}
	public void setS_content(String s_content) {
		this.s_content = s_content;
	}
	public String getS_file() {
		return s_file;
	}
	public void setS_file(String s_file) {
		this.s_file = s_file;
	}
	public String getS_id() {
		return s_id;
	}
	public void setS_id(String s_id) {
		this.s_id = s_id;
	}
	public String getS_replyStatus() {
		return s_replyStatus;
	}
	public void setS_replyStatus(String s_replyStatus) {
		this.s_replyStatus = s_replyStatus;
	}
	public String getS_reply() {
		return s_reply;
	}
	public void setS_reply(String s_reply) {
		this.s_reply = s_reply;
	}
	
}
