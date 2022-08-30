package com.one.kcar.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.one.kcar.dto.member.MemberDTO;
import com.one.kcar.dto.rent.kcarCarRentDTO;
import com.one.kcar.dto.sell.SellDTO;
import com.one.kcar.service.member.MailCheckService;
import com.one.kcar.service.member.MemberService;
import com.one.kcar.service.sell.myPageService;

@Controller
public class myPageController {

	@Autowired myPageService service;
	@Autowired MemberService memberService;
	@Autowired private MailCheckService mailservice; 
	 
	// 내차사기 주문관리 
//	@GetMapping("BuyOrderManage") 
//	public String BuyOrderManage() { 
//		return "mypage_service/BuyOrderManage"; 
//	} 
	// 내차팔기 신청관리 
	@GetMapping("SellAplMgtList") 
	public String SellAplMgtList() { 
		return "mypage_service/SellAplMgtList";	 
	} 
//	// 렌트 신청내역 
//	@GetMapping("RentAplList") 
//	public String RentAplList(Model model, HttpSession session, kcarCarRentDTO rent) { 
//
//		model.addAttribute("list",service.rent_list());
//		return "mypage_service/RentAplList";	 
//	} 
	// 직영점 방문예약 신청 내역 
	@GetMapping("DrcmgtStrVstResvLst") 
	public String DrcmgtStrVstResvLst() { 
		return "mypage_service/DrcmgtStrVstResvLst";	 
	} 
	// 찜한 차량 
	@GetMapping("WishCarList") 
	public String WishCarList() { 
		return "mypage_service/WishCarList";	 
	} 
	// 최근 본 차량 
	@GetMapping("LatelyViewedCar") 
	public String LatelyViewedCar() { 
		return "mypage_service/LatelyViewedCar";	 
	} 
	// 회원 정보 
	@GetMapping("update") 
	public String update() { 
		return "mypage_service/update";	 
	} 
	// 회원 수정 
	@PostMapping("update") 
	public String update(HttpSession session, MemberDTO member, String pwOk, 
			Model model) { 
		String msg = memberService.update(member,pwOk); 
		if(msg.equals("수정 완료")) { 
			session.invalidate(); 
			model.addAttribute("msg",msg); 
			return "home"; 
		} 
		return "mypage_service/update"; 
		 
	} 
	@GetMapping("delete") 
	public String delete() { 
		return "mypage_service/delete"; 
	} 
	// 회원 삭제 
	@PostMapping("delete") 
	public String delete(String m_pw,HttpSession session,Model model) { 
		String msg = memberService.delete(m_pw); 
		model.addAttribute("msg",msg); 
		if(msg.equals("삭제 완료")) { 
			session.invalidate(); 
			return "home"; 
			 
		}else { 
			 
			return "mypage_service/delete"; 
		} 
		 
	}
	@PostMapping("find_pw_email") 
	public String find_pw_email(String email,Model model,HttpSession session) { 
	 
		String msg = memberService.isExistId(email); 
		model.addAttribute("msg",msg); 
		if(msg.equals("중복 아이디 입니다.")) { 
			 
			session.setAttribute("email", email); 
			return "member/pw_find"; 
		} 
		return "member/find_pw_email"; 
	} 
	@PostMapping("pw_find") 
	public String pw_find(MemberDTO member,String m_pw, String pwOk,HttpSession session,Model model) { 
	 
		 
		String msg = memberService.pw_update(member, m_pw,pwOk); 
		model.addAttribute("msg",msg); 
		if(msg.equals("수정 완료")) 
			return "home"; 
		return "member/pw_find"; 
	} 
	 
	
	// 내차팔기 관리신청
		@GetMapping("/mp/MyCarSellAplMgtList")
		public String mycarsell(Model model,SellDTO sell,HttpSession session) {
			String m_email = (String) session.getAttribute("id");
			if(m_email == null )
				return "mypage/myCarsell";
			List<SellDTO> list = service.mycarSell(m_email);

			model.addAttribute("list",list);
			return "mypage/myCarsell";
		}
}
