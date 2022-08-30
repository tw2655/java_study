package com.one.kcar.service.rent;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.one.kcar.dao.rent.IKrnDAO;
import com.one.kcar.dto.rent.Kcar_Repair_AccidentDTO;
import com.one.kcar.dto.rent.Kcar_Repair_NormalDTO;

@PropertySource("classpath:adminAccount.properties")
@Service
public class RentServiceImpl implements IRentService {
	@Autowired private IKrnDAO krnDAO;
	@Autowired private HttpSession session;

//	@Autowired private HttpSession session;
	
//	@Override
//	public ArrayList<Kcar_Repair_NormalDTO> rnList() {
//		ArrayList<Kcar_Repair_NormalDTO> list = krnDAO.rnList();
//		return list;
//	}
	
	@Override
	public void rnrList(String select, String search) {
		ArrayList<Kcar_Repair_NormalDTO> rnrList = krnDAO.rnrList(select, search);
		session.setAttribute("rnrList", rnrList);
	}
	
	@Override
	public void rarList(String select1, String search1) {
		ArrayList<Kcar_Repair_AccidentDTO> rarList = krnDAO.rarList(select1, search1);
		session.setAttribute("rarList", rarList);
	}

}





