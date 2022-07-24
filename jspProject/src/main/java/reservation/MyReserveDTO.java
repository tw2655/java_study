package reservation;

// 내 예약내역
public class MyReserveDTO {
	private int num;
	private String checkIn;
	private String checkOut;
	private int isReserve;
	private int price;
	
	private String userName;
	private String userPhone;
	private String accomName;
	private String accomThumnail;
	private String roomName;
	private int reviewNum;
	
	public MyReserveDTO() {}

	public MyReserveDTO(int num, String checkIn, String checkOut, int isReserve, int price, String userName,
			String userPhone, String accomName, String accomThumnail, String roomName, int reviewNum) {
		super();
		this.num = num;
		this.checkIn = checkIn;
		this.checkOut = checkOut;
		this.isReserve = isReserve;
		this.price = price;
		this.userName = userName;
		this.userPhone = userPhone;
		this.accomName = accomName;
		this.accomThumnail = accomThumnail;
		this.roomName = roomName;
		this.reviewNum = reviewNum;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getCheckIn() {
		return checkIn;
	}

	public void setCheckIn(String checkIn) {
		this.checkIn = checkIn;
	}

	public String getCheckOut() {
		return checkOut;
	}

	public void setCheckOut(String checkOut) {
		this.checkOut = checkOut;
	}

	public int getIsReserve() {
		return isReserve;
	}

	public void setIsReserve(int isReserve) {
		this.isReserve = isReserve;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getAccomName() {
		return accomName;
	}

	public void setAccomName(String accomName) {
		this.accomName = accomName;
	}

	public String getAccomThumnail() {
		return accomThumnail;
	}

	public void setAccomThumnail(String accomThumnail) {
		this.accomThumnail = accomThumnail;
	}

	public String getRoomName() {
		return roomName;
	}

	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}

	public int getReviewNum() {
		return reviewNum;
	}

	public void setReviewNum(int reviewNum) {
		this.reviewNum = reviewNum;
	}

	
		

}
