<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:url var="root" value="/" />
<%
	String kakaonickname = request.getParameter("kakaonickname");
	String kakaoe_mail = request.getParameter("kakaoe_mail");
	
    session.setAttribute("nickname", kakaonickname);
    session.setAttribute("name", kakaonickname);
    session.setAttribute("email", kakaoe_mail);
	response.sendRedirect("${root }/index.jsp");

	
%>