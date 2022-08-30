package com.one.kcar.service.sell;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.one.kcar.dao.sell.IMyPageDAO;
import com.one.kcar.dto.rent.kcarCarRentDTO;
import com.one.kcar.dto.sell.SellDTO;

@Service
public class myPageService {
	
	@Autowired
	IMyPageDAO dao;


	public List<SellDTO> mycarSell(String m_email) {
		
		List<SellDTO> list=dao.mycarsell(m_email);
		for(SellDTO l : list) {
			String progress = l.getS_r_progress();
			if(progress.equals("0")) {
					l.setS_r_progress("접수 전");
			}
			else if(progress.equals("1"))
				l.setS_r_progress("검수 중");
			else if(progress.equals("2"))
				l.setS_r_progress("판매 중");
			else if(progress.equals("3"))
				l.setS_r_progress("판매 완료");
			else if(progress.equals("4"))
				l.setS_r_progress("판매 불가");
			l.setS_r_model(l.getS_r_num()+"<br>"+l.getS_r_model());
		}
		return list;
		
	}


	




	
}
