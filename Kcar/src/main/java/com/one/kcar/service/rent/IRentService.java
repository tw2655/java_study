package com.one.kcar.service.rent;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

@Service
public interface IRentService {

	
//	//회원정보
//	public Object userInfo(String id);
	
	//회원 목록
//	public ArrayList<Kcar_Repair_NormalDTO> rnList();
	
	//일반정비소 목록
	public void rnrList(String select, String search);
	
	//사고정비소 목록
	public void rarList(String select1, String search1);
	

	
}
