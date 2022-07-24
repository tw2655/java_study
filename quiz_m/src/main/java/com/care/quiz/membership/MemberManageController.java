package com.care.quiz.membership;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.care.quiz.membership.dto.AllDTO;
import com.care.quiz.membership.dto.LoginDTO;
import com.care.quiz.membership.service.IMemberService;

@PropertySource("classpath:adminAccount.properties")
@Controller
public class MemberManageController {
	@Autowired private IMemberService memberService;
	
	@RequestMapping(value = "memberListProc")
	public String memberList(Model model, @RequestParam(value = "currentPage", required=false, defaultValue = "1") int currentPage,
		String select, String search) {
		memberService.memberList(currentPage, select, search);
		return "forward:/index?formpath=memberList";
	}


	@Value("${ADMIN:test1}") private String adminAccount;
	// memberListForm.jsp���� ������� ���̵� Ŭ�� �� ��û�� ����
	@RequestMapping(value = "userInfoProc")
	public String userInfo(String id, HttpSession session, Model model) {
		String sessionId = (String)session.getAttribute("id");
		if(id == "" || id == null || sessionId == "" || sessionId == null) {
			return "redirect:memberListProc";
		}
		if(sessionId.equals(id) || adminAccount.equals(sessionId)) {
			model.addAttribute("user", memberService.userInfo(id));
			return "forward:index?formpath=userInfo";
		}
		return "redirect:memberListProc";
	}
	// ���� �� ��й�ȣ üũ
	@RequestMapping(value = "modifyCheckProc")
	public String modifyCheckProc(LoginDTO check, Model model, HttpSession session) {
		boolean b = memberService.modifyCheckProc(check);
		if(b == false)
			return "forward:/index?formpath=modifyCheck?modifyId="+session.getAttribute("modifyId");
		return "redirect:/index?formpath=memberModify";
	}
	// ���� ���� ����
	@RequestMapping(value = "memberModifyProc")
	public String memberModifyProc(AllDTO user, HttpSession session) {
		String modifyId = (String)session.getAttribute("modifyId");
		user.setId(modifyId);
		String msg = memberService.memberModifyProc(user);
		if(msg.equals("ȸ�� ���� �Ϸ�"))
			return "redirect:memberListProc";
		return "redirect:/index?formpath=memberModify";
	}
	//��й�ȣ üũ �� ����
	@RequestMapping(value = "deleteAndCheckProc")
	public String deleteAndCheckProc(LoginDTO check, HttpSession session) {
		boolean b = memberService.deleteAndCheckProc(check);
		if(b == false)
			return "forward:/index?formpath=memberDelete?modifyId="+session.getAttribute("modifyId");
		return "redirect:/";
	}

}