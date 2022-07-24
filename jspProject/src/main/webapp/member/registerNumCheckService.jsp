<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:url var="root" value="/" />
 <%
	request.setCharacterEncoding("utf-8");
	String num = request.getParameter("number");
	String number = (String)session.getAttribute("num");
	
	if(num.equals(number)){
		response.sendRedirect("register.jsp");
		return;
	}else{
		%><script>alert('인증 번호 틀렸습니다.'); history.back();</script>
		<%
	}

%>