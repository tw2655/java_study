package com.one.kcar.controller;

import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.one.kcar.dto.member.MemberDTO;
import com.one.kcar.service.member.MailService;



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
			String content = "<div id=\"readFrame\">\r\n"
					+ "      <div\r\n"
					+ "         style=\"max-width: 700px; min-width: 280px; margin: 0 auto; font-family: '나눔고딕', Helvetica, Arial, NanumGothic, '맑은 고딕', SDNeoGothic, SDGothicNeo, '돋움', 'dotum', sans-serif;\">\r\n"
					+ "         <div style=\"padding: 40px;\">\r\n"
					+ "            <!-- 제목 및 차량 이미지 -->\r\n"
					+ "            <div style=\"width: 100%;\">\r\n"
					+ "               <table width=\"100%\"\r\n"
					+ "                  style=\"border-collapse: collapse; border-spacing: 0px; word-break: break-all; word-wrap: break-word;\">\r\n"
					+ "                  <colgroup>\r\n"
					+ "                     <col width=\"100%\">\r\n"
					+ "                  </colgroup>\r\n"
					+ "                  <tbody>\r\n"
					+ "                     <tr>\r\n"
					+ "                        <td><span\r\n"
					+ "                           style=\"font-size: 22px; color: ##16171d; font-weight: bold; letter-spacing: -0.4px;\">kcar.com에서\r\n"
					+ "                              <span\r\n"
					+ "                              style=\"font-size: 22px; font-weight: bold; color: #b70f28; letter-spacing: -0.4px;\">고객</span>님께\r\n"
					+ "                              보내신 인증번호 입니다.\r\n"
					+ "                        </span></td>\r\n"
					+ "                     </tr>\r\n"
					+ "                     <tr>\r\n"
					+ "                        <td>\r\n"
					+ "                           <p\r\n"
					+ "                              style=\"width:400px; padding: 16px 24px; border-radius: 8px; background-color: #f6f8fa; font-size: 16px; letter-spacing: -0.4px; color: #16171d; margin-top: 24px;\">인증번호 : "+number+"</p>\r\n"
					+ "                        </td>\r\n"
					+ "                     </tr>\r\n"
					+ "                  </tbody>\r\n"
					+ "               </table>\r\n"
					+ "            </div>\r\n"
					+ "         </div>\r\n"
					+ "      </div>\r\n"
					+ "   </div>";
			System.out.println("인증 번호 : " + number);
			mailService.sendMail(email, "[K Car 인증번호 입니다]", content);
			session.setAttribute("authNumber", number);
			return "인증 번호 전송";
		}else {
			return "이메일을 입력하세요.";
		}
	}
	
	@ResponseBody
	@PostMapping(value="checkAuth", produces = "application/json; charset=UTF-8")
	public String checkAuth(@RequestBody(required = false) Map<String, String> map) {
		System.out.println("고객이 입력한 인증 번호 : " + map.get("authNumber"));
		
		// sendAuth 메소드에서 생성한 인증번호와 고객이 입력한 인증번호를 비교
		String sessionAuthNumber = (String)session.getAttribute("authNumber");
		String clientAuthNumber = map.get("authNumber");
		if(sessionAuthNumber == null ) {
			return "인증 번호를 생성하세요.";
		}
		if(clientAuthNumber.isEmpty()) {
			return "인증 번호를 입력하세요.";
		}
		
		session.setAttribute("authStatus", false);
		if(sessionAuthNumber.equals(clientAuthNumber)) {
			session.setAttribute("authStatus", true);
			return "인증 성공";
		}
		
		return "인증 실패";
	}
}
