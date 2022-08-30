package com.one.kcar.dao.sell;

import java.util.List;


import org.apache.ibatis.annotations.Mapper;

import com.one.kcar.dto.sell.SellDTO;
import com.one.kcar.dto.sell.SellReviewDTO;

@Mapper
public interface ISellDAO {

	List<SellReviewDTO> reviewList(int begin, int end);

	int sellRequest(SellDTO sell);

	List<String> brandlist();

	List<String> modellist(String brand);

	SellReviewDTO reviewView(int num);

	int reviewListcount();
}
