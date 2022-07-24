package test;

public class AccommoDTO {
	private int num;
	private String name;
	private String address;
	private String thumnail;
	private String tel;
	private String detailImage;
	private int sPrice;
	private int dPrice;
	private double score;
	private int reviewCnt;

	public AccommoDTO() {

	}
	
	public AccommoDTO(int num, String name, String address, String thumnail, String tel, String detailImage) {
		this.num = num;
		this.name = name;
		this.address = address;
		this.thumnail = thumnail;
		this.tel = tel;
		this.detailImage = detailImage;
	}

	public AccommoDTO(int num, String name, String address, String thumnail, String tel, String detailImage, int sPrice,
			int dPrice, double score) {
		this.num = num;
		this.name = name;
		this.address = address;
		this.thumnail = thumnail;
		this.tel = tel;
		this.detailImage = detailImage;
		this.sPrice = sPrice;
		this.dPrice = dPrice;
		this.score = score;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getThumnail() {
		return thumnail;
	}

	public void setThumnail(String thumnail) {
		this.thumnail = thumnail;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getDetailImage() {
		return detailImage;
	}

	public void setDetailImage(String detailImage) {
		this.detailImage = detailImage;
	}

	public int getsPrice() {
		return sPrice;
	}

	public void setsPrice(int sPrice) {
		this.sPrice = sPrice;
	}

	public int getdPrice() {
		return dPrice;
	}

	public void setdPrice(int dPrice) {
		this.dPrice = dPrice;
	}

	public double getScore() {
		return score;
	}

	public void setScore(double score) {
		this.score = score;
	}

	public int getReviewCnt() {
		return reviewCnt;
	}

	public void setReviewCnt(int reviewCnt) {
		this.reviewCnt = reviewCnt;
	}
	
}
