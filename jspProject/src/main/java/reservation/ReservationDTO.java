package reservation;

// 저장용
public class ReservationDTO {
	private int num;
	private String userEmail;
	private int accommNum;
	private String accommName;
	private int roomNum;
	private String roomName;
	private String checkIn;
	private String checkOut;
	private int price;
	private String visitMethod;
	
	public ReservationDTO() {}

	public ReservationDTO(int num, String userEmail, int accommNum, String accommName, int roomNum, String roomName,
			String checkIn, String checkOut, int price, String visitMethod) {
		super();
		this.num = num;
		this.userEmail = userEmail;
		this.accommNum = accommNum;
		this.accommName = accommName;
		this.roomNum = roomNum;
		this.roomName = roomName;
		this.checkIn = checkIn;
		this.checkOut = checkOut;
		this.price = price;
		this.visitMethod = visitMethod;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
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

	public int getRoomNum() {
		return roomNum;
	}

	public void setRoomNum(int roomNum) {
		this.roomNum = roomNum;
	}

	public String getRoomName() {
		return roomName;
	}

	public void setRoomName(String roomName) {
		this.roomName = roomName;
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

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getVisitMethod() {
		return visitMethod;
	}

	public void setVisitMethod(String visitMethod) {
		this.visitMethod = visitMethod;
	}
	
	
}
