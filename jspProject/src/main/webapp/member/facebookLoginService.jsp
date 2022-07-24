<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:url var="root" value="/" />
<%
	String fbname = request.getParameter("facebookname");
	String fbe_mail = request.getParameter("facebooke_mail");
	
    session.setAttribute("nickname", fbname);
    session.setAttribute("name", fbname);
    session.setAttribute("email", fbe_mail);
	response.sendRedirect("${root }/index.jsp");

	
%>