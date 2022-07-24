package reservation;

public class RoomDTO {
	private int rNum;
	private int accommNum;
	private String name;
	private String image;
	private int sPrice;
	private String checkIn;
	private String checkOut;
	private int dPrice;
	private String endTime;
	private String useTime;
	
	public RoomDTO() {}

	public RoomDTO(int rNum, int accommNum, String name, String image, int sPrice, String checkIn, String checkOut,
			int dPrice, String endTime, String useTime) {
		super();
		this.rNum = rNum;
		this.accommNum = accommNum;
		this.name = name;
		this.image = image;
		this.sPrice = sPrice;
		this.checkIn = checkIn;
		this.checkOut = checkOut;
		this.dPrice = dPrice;
		this.endTime = endTime;
		this.useTime = useTime;
	}

	public int getrNum() {
		return rNum;
	}

	public void setrNum(int rNum) {
		this.rNum = rNum;
	}

	public int getAccommNum() {
		return accommNum;
	}

	public void setAccommNum(int accommNum) {
		this.accommNum = accommNum;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public int getsPrice() {
		return sPrice;
	}

	public void setsPrice(int sPrice) {
		this.sPrice = sPrice;
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

	public int getdPrice() {
		return dPrice;
	}

	public void setdPrice(int dPrice) {
		this.dPrice = dPrice;
	}

	public String getEndTime() {
		return endTime;
	}

	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}

	public String getUseTime() {
		return useTime;
	}

	public void setUseTime(String useTime) {
		this.useTime = useTime;
	}

	
	
	

}
