package com.one.kcar.dao.buy;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.one.kcar.dto.buy.BuyReviewDTO;

@Mapper
public interface IBuyReviewDAO {

	ArrayList<BuyReviewDTO> buyReviewList(@Param("start")int start,@Param("end")int end);

	String reviewCnt();
	
	
}
