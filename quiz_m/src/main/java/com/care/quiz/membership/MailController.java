package com.care.quiz.membership;
import java.util.Map;

import java.util.Random;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import com.care.quiz.membership.service.MailService;

@Controller
public class MailController {
	@Autowired private MailService mailService;
	
	@Autowired private HttpSession session;
	
	@ResponseBody
	@PostMapping(value="sendAuth", produces = "application/json; charset=UTF-8")
	public String sendAuth(@RequestBody(required = false) String email) {
		if(email != null) {
			Random r = new Random();
			String number = String.format("%06d", r.nextInt(1000000)); 
			System.out.println("���� ��ȣ : " + number);
			mailService.sendMail(email, "[������ȣ]", number);
			session.setAttribute("authNumber", number);
			return "���� ��ȣ ����";
		}else {
			return "�̸����� �Է��ϼ���.";
		}
	}
	@ResponseBody
	@PostMapping(value="checkAuth", produces = "application/json; charset=UTF-8")
	public String checkAuth(@RequestBody(required = false) Map<String, String> map) {
		System.out.println("���� �Է��� ���� ��ȣ : " + map.get("authNumber"));
		// sendAuth �޼ҵ忡�� ������ ������ȣ�� ���� �Է��� ������ȣ�� ��
		String sessionAuthNumber = (String)session.getAttribute("authNumber");
		String clientAuthNumber = map.get("authNumber");
		if(sessionAuthNumber == null ) {
			return "���� ��ȣ�� �����ϼ���.";
		}
		if(clientAuthNumber.isEmpty()) {
			return "���� ��ȣ�� �Է��ϼ���.";
		}
		session.setAttribute("authStatus", false);
		if(sessionAuthNumber.equals(clientAuthNumber)) {
			session.setAttribute("authStatus", true);
			return "���� ����";
		}
		return "���� ����";
	}
}
