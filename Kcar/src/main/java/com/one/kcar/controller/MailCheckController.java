package com.one.kcar.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.one.kcar.service.member.MailCheckService;
import com.one.kcar.service.member.MemberService;

@Controller
public class MailCheckController {
	@Autowired private MailCheckService mailservice;
	@Autowired private MemberService memberService;

	
	@GetMapping("mailcheck")
	public String check(Model model) {
		String msg = mailservice.check();
		if(msg.equals("인증 완료")) {
			model.addAttribute("msg", msg);
			return "member/register2";
		}else 
			model.addAttribute("msg2", msg);
			return "member/register_email";
		
		
	
	}


}
