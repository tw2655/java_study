package com.one.kcar.dto.rent;
/*
 * CREATE TABLE kcarCarRentPhoto(
crNumber varchar2(10) not null,
crpNum varchar2(2) not null,
crpPhoto varchar2(150) not null,
constraint fkCr1 foreign key (crNumber) references kcarCarRent(crNumber) on delete cascade
);
 */

public class kcarCarRentPhotoDTO extends kcarCarRentDTO{
	private String crNumber;
	private String crpNum;
	private String crpPhoto;
	
	public String getCrNumber() {
		return crNumber;
	}
	public void setCrNumber(String crNumber) {
		this.crNumber = crNumber;
	}
	public String getCrpNum() {
		return crpNum;
	}
	public void setCrpNum(String crpNum) {
		this.crpNum = crpNum;
	}
	public String getCrpPhoto() {
		return crpPhoto;
	}
	public void setCrpPhoto(String crpPhoto) {
		this.crpPhoto = crpPhoto;
	}
	
	
}
