<%@page import="member.MemberDTO"%>
<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%

	
	request.setCharacterEncoding("utf-8");
	String email = (String)session.getAttribute("email");
	
	
	
	MemberDAO memberDao = new MemberDAO();
	MemberDTO check = memberDao.selectEmail(email);
	
	
		memberDao.delete(email);
		response.sendRedirect("logout.jsp");
    %>
		

