package com.one.kcar.dao.rent;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.one.kcar.dto.rent.Kcar_Repair_AccidentDTO;
import com.one.kcar.dto.rent.Kcar_Repair_NormalDTO;

@Mapper
public interface IKrnDAO {

//	ArrayList<Kcar_Repair_NormalDTO> rnList();
	
	ArrayList<Kcar_Repair_NormalDTO> rnrList(@Param("select")String select, @Param("search")String search);

	ArrayList<Kcar_Repair_AccidentDTO> rarList(@Param("select1")String select1, @Param("search1")String search1);
}
