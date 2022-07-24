package board;

public class NotificationDTO {
	private int num;
	private String title;
	private String createDate;
	private String content;
	
	public NotificationDTO() {}

	public NotificationDTO(int num, String title, String createDate, String content) {
		super();
		this.num = num;
		this.title = title;
		this.createDate = createDate;
		this.content = content;
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

	public String getCreateDate() {
		return createDate;
	}

	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
	
}
