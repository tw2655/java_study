package com.one.kcar.service.buy;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.one.kcar.dao.buy.IHomeServiceDAO;
import com.one.kcar.dto.buy.BuyReviewDTO;
import com.one.kcar.dto.buy.CarDTO;
import com.one.kcar.dto.buy.QuestionDTO;

@Service
public class homeService {
	@Autowired
	private IHomeServiceDAO homeServiceDao;
	
	public void homeServiceMain(Model model) {
		
		String memberCntString = homeServiceDao.memberCount();
		if(memberCntString == null) {
			memberCntString = "0";
		}
		ArrayList<CarDTO> carList = homeServiceDao.carList();
		ArrayList<BuyReviewDTO> reviewList = homeServiceDao.reviewList();
		ArrayList<QuestionDTO> questionList = homeServiceDao.quesionList(); 
		
		model.addAttribute("memberCount", memberCntString);
		model.addAttribute("carList", carList);
		model.addAttribute("reviewList", reviewList);
		model.addAttribute("questionList", questionList);
		
	}
}
