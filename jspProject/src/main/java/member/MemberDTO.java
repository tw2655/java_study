package member;

//	CREATE TABLE member (
//			   email   varchar2(50) PRIMARY KEY,
//			   pw   varchar2(20)   NOT   NULL,
//			   nickname   varchar2(30) NOT NULL,
//			   phone   varchar2(13) NOT NULL,
//			   name   varchar2(20) NULL
//			);
public class MemberDTO {
	private String email;
	private String pw;
	private String nickname;
	private String phone;
	private String name;
	
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
	


}
