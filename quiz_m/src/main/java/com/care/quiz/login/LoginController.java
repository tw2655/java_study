package com.care.quiz.login;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.care.quiz.login.service.ILoginService;
import com.care.quiz.membership.dto.LoginDTO;

@Controller
public class LoginController {
	@Autowired private ILoginService loginService;
	
	@PostMapping(value = "loginProc")
	public String loginProc(LoginDTO login, Model model) {
		String msg = loginService.loginProc(login);
		if(msg.equals("�α��� ����")) {
			return "redirect:/index?formpath=home";
		}
		model.addAttribute("msg", msg);
		return "forward:/index?formpath=login";
	}
	@RequestMapping(value = "logout")
	public String logout(Model model, HttpSession session) {
		session.invalidate();
		model.addAttribute("msg", "�α� �ƿ�");
		return "forward:index?formpath=home";
	}
}