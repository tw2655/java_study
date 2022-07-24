<%@page import="member.MemberDTO"%>
<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String email = request.getParameter("email");
	String pw = request.getParameter("pw");
   

	
	
	
	MemberDAO memberDao = new MemberDAO();
	MemberDTO check = memberDao.selectEmail(email);
	if(check == null){
		out.print("<script>alert('아이디 또는 비밀번호가 틀렸습니다.'); history.back();</script>");
		return;
	}
	if(check.getPw().equals(pw)){
		
		session.setAttribute("email", check.getEmail());
		session.setAttribute("name", check.getName());
		session.setAttribute("phone", check.getPhone());
		session.setAttribute("nickname", check.getNickname());
		response.sendRedirect("../index.jsp");
		return;
	}
%>
<script>alert('아이디 또는 비밀번호가 틀렸습니다.'); history.back();</script>
    