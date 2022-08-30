<%@page import="com.one.kcar.dao.member.IMemberDAO"%>
<%@page import="com.one.kcar.dto.member.MemberDTO"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	String naver_nickname = request.getParameter("nickname");
	String naver_email = request.getParameter("email");
	
    session.setAttribute("nickname", naver_nickname);
    session.setAttribute("name", naver_nickname);
    session.setAttribute("email", naver_email);
    
	response.sendRedirect("home");
	%>