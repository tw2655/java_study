package com.care.quiz.membership.service;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import com.care.quiz.membership.dao.IMemberDAO;
import com.care.quiz.membership.dto.AllDTO;
import com.care.quiz.membership.dto.LoginDTO;
import com.care.quiz.membership.dto.MemberDTO;
import com.care.quiz.membership.dto.PostcodeDTO;

@PropertySource("classpath:adminAccount.properties")
@Service
public class MemberServiceImpl implements IMemberService{
	@Autowired private IMemberDAO memberDao;
	
	@Autowired private HttpSession session;

	@Override
	public String isExistId(String id) {
		if(id == null)
			return "���̵� �Է� �� �ٽ� �õ��ϼ���.";
		int count = memberDao.isExistId(id);
		if(count == 1)
			return "�ߺ� ���̵� �Դϴ�.";
		return "��� ������ ���̵��Դϴ�.";
	}
	@Override
	public String memberProc(MemberDTO member, PostcodeDTO post) {
		LoginDTO login = member;
		if(login.getId() == null || login.getId().isEmpty())
			return "���̵� �Է��ϼ���.";
		if(login.getPw() == null || login.getPw().isEmpty())
			return "��й�ȣ�� �Է��ϼ���.";
		if(memberDao.isExistId(login.getId()) > 0)
			return "�ߺ� ���̵� �Դϴ�.";
		Boolean authStatus = (Boolean)session.getAttribute("authStatus");
			if(authStatus == null || authStatus != true)
				return "�̸��� ���� �� ���� �� �� �ֽ��ϴ�.";
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		String securePw = encoder.encode(login.getPw());
		login.setPw(securePw);
		memberDao.insertLogin(login);
		if("m".equals(member.getGender()) || "w".equals(member.getGender()) || "n".equals(member.getGender()))
				memberDao.insertMember(member);
		if(! ("".equals(post.getZipcode())) )
			memberDao.insertPost(post);
		session.invalidate(); // ������ȣ �� ���� ���� ����
		return "���� �Ϸ�";
		}
	
	
	
	@Override
	public AllDTO userInfo(String id) {
		// AllDTO user = memberDao.userAll(id);
		// return user;
		MemberDTO member = memberDao.userInfo(id);
		PostcodeDTO post = memberDao.postInfo(id);
		AllDTO user = new AllDTO();
		if(member != null) {
			user.setId(member.getId());
			user.setEmail(member.getEmail());
			user.setGender(member.getGender());
		}
		if(post != null) {
			user.setZipcode(post.getZipcode());
			user.setAddr1(post.getAddr1());
			user.setAddr2(post.getAddr2());
		}
			return user;
	}
	
	public boolean modifyCheckProc(LoginDTO check) {
		if(check.getPw().equals(check.getConfirmPw()) == false){
			return false;
		}
		//���� ���̵�� ��й�ȣ Ȯ��(�Ϲݻ���� �Ǵ� ������ ����)
		String id = (String)session.getAttribute("id");
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		LoginDTO login = memberDao.userPassword(id);
		if(login == null || encoder.matches(check.getPw(), login.getPw()) == false) {
			return false;
		}
		// ������ ���� ��� memberModifyForm.jsp ����ϱ� ���� ������ 
		String modifyId = (String)session.getAttribute("modifyId");
		AllDTO user = userInfo(modifyId);
		user.setPw(login.getPw());
		session.setAttribute("user", user);
		return true;
	}
	/*
	* ADMIN : �ܺ� ���� ����
	* test1 : ���� �� �⺻ ��
	*/
	@Value("${ADMIN:test1}") private String adminAccount;
	
	@Override
	public String memberModifyProc(AllDTO user) {
		BCryptPasswordEncoder encoder = new 
		BCryptPasswordEncoder();
		if(user.getPw().equals(user.getConfirmPw()) == false){
			return "�� ��й�ȣ�� ��ġ���� �ʽ��ϴ�.";
		}
		if(user.getPw() != "") {
			LoginDTO login = user; 
			String tmp = encoder.encode(user.getPw());
			login.setPw(tmp);
			memberDao.updateLogin(login);
		}
		// �ٷ� �� modifyCheckProc()���� �Է��� ȸ�� ����.
		AllDTO oldUserInfo = (AllDTO)session.getAttribute("user");
		if(user.getEmail() != "" && user.getEmail().equals(oldUserInfo.getEmail()) == false) {
			MemberDTO member = user; 
			memberDao.updateMember(member);
		}
		if(user.getZipcode() != "" && user.getZipcode().equals(oldUserInfo.getZipcode()) == false) {
			PostcodeDTO post = new PostcodeDTO();
			post.setId(user.getId());
			post.setZipcode(user.getZipcode());
			post.setAddr1(user.getAddr1());
			post.setAddr2(user.getAddr2());
			memberDao.updatePost(post);
			}
			// ������ ������ �ƴ϶�� ������ ������ ��� ����
			if(adminAccount.equals(session.getAttribute("id")) == false)
				session.invalidate();
			return "ȸ�� ���� �Ϸ�";
		}
	@Override
	public boolean deleteAndCheckProc(LoginDTO check) {
		if (check.getPw().equals(check.getConfirmPw()) == false) {
			return false;
		}
		// ���� ���̵�� ��й�ȣ Ȯ��(�Ϲݻ���� �Ǵ� ������ ����)
		String id = (String) session.getAttribute("id");
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		LoginDTO login = memberDao.userPassword(id);
		if (login == null || encoder.matches(check.getPw(), login.getPw()) == false) {
			return false;
		}
		// ���� ����
		String modifyId = (String)session.getAttribute("modifyId");
		memberDao.deleteLogin(modifyId);
		// ������ ������ �α��ε� ������ �ٸ��ų� ������ ������ ���������� ������ ���� ����
		if(adminAccount.equals(id) == false || adminAccount.equals(modifyId))
			session.invalidate();
		return true;
	}
	@Override
	public void memberList(int currentPage, String select, String search) {
		int pageBlock = 3; // �� ȭ�鿡 ������ ������ ��
		int totalCount = memberDao.memberCount(); // �� �������� �� 
		int end = currentPage * pageBlock; // �������� �� ��ȣ
		int begin = end+1 - pageBlock; // �������� ���� ��ȣ
		ArrayList<MemberDTO> list = memberDao.memberList(begin, end, select, search);
		session.setAttribute("list", list);
		String url = "/quiz/memberListProc?currentPage=";
		session.setAttribute("page", PageService.getNavi(currentPage, pageBlock, totalCount, url));
	}

}


