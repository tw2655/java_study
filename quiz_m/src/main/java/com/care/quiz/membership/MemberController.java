package com.care.quiz.membership;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.care.quiz.membership.dto.MemberDTO;
import com.care.quiz.membership.dto.PostcodeDTO;
import com.care.quiz.membership.service.MemberServiceImpl;

@Controller
public class MemberController {
	@Autowired private MemberServiceImpl memberService;
	
	@ResponseBody
	@PostMapping(value = "isExistId", produces = "application/json; charset=UTF-8")
	public String isExistId(@RequestBody(required = false) String id) {
		String msg = memberService.isExistId(id);
		return msg;
	}
	@RequestMapping(value = "memberProc")
	public String memberProc(MemberDTO member, PostcodeDTO postcode, Model model, RedirectAttributes ra) {
	String msg = memberService.memberProc(member, postcode);
		if(msg.equals("���� �Ϸ�")) {
			ra.addFlashAttribute("msg", msg);
			return "redirect:/index?formpath=home";
		}else {
			model.addAttribute("msg", msg);
			return "forward:/index?formpath=member";
		}
	}

}
