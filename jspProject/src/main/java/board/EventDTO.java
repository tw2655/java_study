package board;

public class EventDTO {
	private int num;
	private String title;
	private String startDate;
	private String endDate;
	
	public EventDTO() {}

	public EventDTO(int num, String title, String startDate, String endDate) {
		super();
		this.num = num;
		this.title = title;
		this.startDate = startDate;
		this.endDate = endDate;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	
	
}
