package com.care.quiz.membership.dao;
import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.care.quiz.membership.dto.LoginDTO;
import com.care.quiz.membership.dto.MemberDTO;
import com.care.quiz.membership.dto.PostcodeDTO;


@Repository
public interface IMemberDAO {
	int isExistId(String id);
	
	void insertLogin(LoginDTO login);
	
	void insertMember(MemberDTO member);
	
	void insertPost(PostcodeDTO post);

// 	ArrayList<MemberDTO> memberList();
		/*
		Mapper 파일에서 사용
		exam) SELECT * FROM member WHERE num BETWEEN #{파라미터명} and #{e}
		*/
	ArrayList<MemberDTO> memberList(@Param("b")int begin, @Param("e")int end,@Param("sel")String select,@Param("search")String search);
	
	// AllDTO userAll(String id);
	MemberDTO userInfo(String id);
	
	PostcodeDTO postInfo(String id);

	LoginDTO userPassword(String id);
	
	int updateLogin(LoginDTO login);
	
	int updateMember(MemberDTO member);
	
	int updatePost(PostcodeDTO post);

	void deleteLogin(String modifyId);
	
	int memberCount();


}