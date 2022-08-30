package com.one.kcar.dao.sell;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.one.kcar.dto.rent.kcarCarRentDTO;
import com.one.kcar.dto.sell.SellDTO;

@Mapper
public interface IMyPageDAO {

	List<SellDTO> mycarsell(String email);


}
