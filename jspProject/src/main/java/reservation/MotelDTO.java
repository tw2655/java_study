package reservation;

public class MotelDTO {
	private int accommoNum;
	private int sprice;
	private int dprice;

	public MotelDTO() {

	}

	public MotelDTO(int accommoNum, int sprice, int dprice) {
		this.accommoNum = accommoNum;
		this.sprice = sprice;
		this.dprice = dprice;
	}

	public int getAccommoNum() {
		return accommoNum;
	}

	public void setAccommoNum(int accommoNum) {
		this.accommoNum = accommoNum;
	}

	public int getSprice() {
		return sprice;
	}

	public void setSprice(int sprice) {
		this.sprice = sprice;
	}

	public int getDprice() {
		return dprice;
	}

	public void setDprice(int dprice) {
		this.dprice = dprice;
	}

}
