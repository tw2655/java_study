package board;

public class InquiryDTO {
	private int num;
	private String user_email;
	private String category;
	private String type;
	private String phone;
	private String email;
	private String content;
	private String answer;
	private String create_date;
	private int is_answer;
	
	public InquiryDTO() {}

	
	public InquiryDTO(int num, String user_email, String category, String type, String phone, String email,
			String content, String answer, String create_date, int is_answer) {
		super();
		this.num = num;
		this.user_email = user_email;
		this.category = category;
		this.type = type;
		this.phone = phone;
		this.email = email;
		this.content = content;
		this.answer = answer;
		this.create_date = create_date;
		this.is_answer = is_answer;
	}


	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}


	public String getCreate_date() {
		return create_date;
	}


	public void setCreate_date(String create_date) {
		this.create_date = create_date;
	}


	public int getIs_answer() {
		return is_answer;
	}


	public void setIs_answer(int is_answer) {
		this.is_answer = is_answer;
	}
	
	
	
	
}
