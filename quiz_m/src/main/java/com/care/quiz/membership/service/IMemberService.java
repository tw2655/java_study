package com.care.quiz.membership.service;


import com.care.quiz.membership.dto.AllDTO;
import com.care.quiz.membership.dto.LoginDTO;
import com.care.quiz.membership.dto.MemberDTO;
import com.care.quiz.membership.dto.PostcodeDTO;

public interface IMemberService {
	// �ߺ� Ȯ��
	public String isExistId(String id);
	// ȸ�� ����
	public String memberProc(MemberDTO member, PostcodeDTO post);
	//ȸ�� ���
	public void memberList(int currentPage, String select, String search);
	//ȸ�� ����
	public AllDTO userInfo(String id);

	//���� �� ��й�ȣ üũ
	public boolean modifyCheckProc(LoginDTO check);
	// ȸ�� ���� ����
	public String memberModifyProc(AllDTO user);
	
	public boolean deleteAndCheckProc(LoginDTO check);
	
	
}
