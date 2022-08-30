package com.one.kcar.dao.buy;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.one.kcar.dto.buy.BuyReviewDTO;
import com.one.kcar.dto.buy.CarDTO;
import com.one.kcar.dto.buy.QuestionDTO;

@Mapper
public interface IHomeServiceDAO {

	ArrayList<QuestionDTO> quesionList();

	ArrayList<BuyReviewDTO> reviewList();

	ArrayList<CarDTO> carList();

	String memberCount();
}
