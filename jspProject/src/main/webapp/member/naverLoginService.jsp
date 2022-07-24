<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String nickname = request.getParameter("nickname");
	String email = request.getParameter("email");
	
    session.setAttribute("nickname", nickname);
    session.setAttribute("name", nickname);
    session.setAttribute("email", email);
	response.sendRedirect("/Project/index.jsp");
	%>

	
