package com.one.kcar.service.rent;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.one.kcar.dao.rent.IKcarCarRentDAO;
import com.one.kcar.dto.rent.kcarCarRentDTO;

@Service
public interface IrentCarService {
	
	//중고차 목록
	public String kcarCarRentList();
}
