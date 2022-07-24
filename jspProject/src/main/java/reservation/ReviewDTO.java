package reservation;

public class ReviewDTO {
	// 제목, 평점, 방이름, 유저이메일, 유저 닉네임, 내용, 작성시간
	private String title;
	private int score;
	private int accommNum;
	private String accommName;
	private String roomName;
	private String userNickname;
	private String content;
	private String createDate;
	private int ReservationNum;
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	public int getAccommNum() {
		return accommNum;
	}
	public void setAccommNum(int accommNum) {
		this.accommNum = accommNum;
	}
	public String getAccommName() {
		return accommName;
	}
	public void setAccommName(String accommName) {
		this.accommName = accommName;
	}
	public String getRoomName() {
		return roomName;
	}
	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}
	public String getUserNickname() {
		return userNickname;
	}
	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getCreateDate() {
		return createDate;
	}
	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}
	public int getReservationNum() {
		return ReservationNum;
	}
	public void setReservationNum(int reservationNum) {
		ReservationNum = reservationNum;
	}
	
	// 작성을 위한 내용
	
	

	

}
