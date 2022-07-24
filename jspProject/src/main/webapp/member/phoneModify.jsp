<%@page import="member.MemberDTO"%>
<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String email = (String) session.getAttribute("email");
	if (email.isEmpty()){
		out.print("<script>alert('로그인 후 이용가능합니다.'); location.href='login.jsp'</script>");
	}	
// 	String email = "test@naver.com";

	String nickname = request.getParameter("unick");
	String name = request.getParameter("uname");
	String phone = request.getParameter("uphone");
	System.out.println("nickname: " + nickname + ", name: " + name + ", phone : " + phone);
	
	MemberDAO memberDao = new MemberDAO();
	MemberDTO member = memberDao.selectEmail(email);
	member.setPhone(phone);
	memberDao.phoneUpdate(member);
	
%>
<script>window.location.href = "myPage.jsp"</script>