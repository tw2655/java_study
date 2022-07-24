<%@page import="member.MemberDTO"%>
<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	
	String email = request.getParameter("email");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String confirmPw = request.getParameter("confirmPw");
	String nickname = request.getParameter("nickname");
	String phone = request.getParameter("phone");
	
	if(email== "" || pw == "" || name =="" || confirmPw =="" || nickname =="" || phone ==""){
		out.print("<script>alert('모두 필수 항목 입니다.');history.back(); </script>");
	}
		
		
	
	MemberDAO memberDao = new MemberDAO();
	MemberDTO member = memberDao.selectEmail(email);
	if(member == null){
		member = new MemberDTO();
		member.setEmail(email);
		member.setPw(pw);
		member.setName(name);
		member.setNickname(nickname);
		member.setPhone(phone);
		
		memberDao.insert(member);
		out.print("<script>alert('회원 가입 완료');location.href='../index.jsp'; </script>");
	}else{
		out.print("<script>alert('중복아이디로 가입 실패'); history.back(); </script>");
	}
		

%>