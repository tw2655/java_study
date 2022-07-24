package reservation;

import java.util.ArrayList;

public class DetailDTO {
	// 모텔 숫자, 모텔 이름, 모텔 주소, 모텔 썸네일
	private int accommNum;
	private String name;
	private String address;
	private String detailImage;
	// 모텔 테마
	private ArrayList<String> themes = new ArrayList<String>();
	
	// 모텔 리뷰 -> 모텔 평점 -> 리뷰 list에 쌓으면서 평점 계산
	// 평균값이 아닌 sum값만, 평균값은 페이지에서 계산
	private int sumReview;
	private ArrayList<ReviewDTO> reviews = new ArrayList<ReviewDTO>();
	
	// 방 정보
	private ArrayList<RoomDTO> rooms = new ArrayList<RoomDTO>();
	
	public DetailDTO() {}

	public DetailDTO(int accommNum, String name, String address, String detailImage, ArrayList<String> themes,
			int sumReview, ArrayList<ReviewDTO> reviews, ArrayList<RoomDTO> rooms) {
		super();
		this.accommNum = accommNum;
		this.name = name;
		this.address = address;
		this.detailImage = detailImage;
		this.themes = themes;
		this.sumReview = sumReview;
		this.reviews = reviews;
		this.rooms = rooms;
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

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getDetailImage() {
		return detailImage;
	}

	public void setDetailImage(String detailImage) {
		this.detailImage = detailImage;
	}

	public ArrayList<String> getThemes() {
		return themes;
	}

	public void setThemes(ArrayList<String> themes) {
		this.themes = themes;
	}
	
	public void addThemes(String theme) {
		this.themes.add(theme);
	}

	public int getSumReview() {
		return sumReview;
	}

	public void setSumReview(int sumReview) {
		this.sumReview = sumReview;
	}
	
	public ArrayList<ReviewDTO> getReviews() {
		return reviews;
	}

	public void setReviews(ArrayList<ReviewDTO> reviews) {
		this.reviews = reviews;
	}
	
	public void addReviews(ReviewDTO review) {
		// sumreview 계산
		this.sumReview += review.getScore();
		this.reviews.add(review);
	}

	public ArrayList<RoomDTO> getRooms() {
		return rooms;
	}

	public void setRooms(ArrayList<RoomDTO> rooms) {
		this.rooms = rooms;
	}
	
	public void addRooms(RoomDTO room) {
		this.rooms.add(room);
	}

	
	
}
