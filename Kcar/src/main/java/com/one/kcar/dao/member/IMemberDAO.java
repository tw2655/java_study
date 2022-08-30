package com.one.kcar.dao.member;

import org.apache.ibatis.annotations.Mapper;

import com.one.kcar.dto.member.MemberDTO;

@Mapper
public interface IMemberDAO {

	int isExistId(String id);

	void insertMember(MemberDTO member);

	MemberDTO login(String id);

	void update(MemberDTO member);

	void delete(MemberDTO member);

	void pw_update(MemberDTO member);

	MemberDTO check_kakao(String kakao_email);
	


	


}
