<%@page import="board.InquiryDTO"%>
<%@page import="board.InquiryDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("utf-8");
	
	String user_email = (String) session.getAttribute("email");
	
	 if (user_email == null){
		out.print("<script> alert('로그인 후 이용가능합니다.'); location.href='../member/login.jsp';</script>");
		return;
	 }

	InquiryDAO inquiryDao = new InquiryDAO();

	// inquiry form value
	// num, user_email, category, type, phone, email, content, answer;
	String category = request.getParameter("room_type");
	String type = request.getParameter("inq_type");
	String phone = request.getParameter("phone");
	String email = request.getParameter("email");
	String content = request.getParameter("content");
	
	InquiryDTO inquiry = new InquiryDTO();
	inquiry.setUser_email(user_email);
	inquiry.setCategory(category);
	inquiry.setType(type);
	inquiry.setPhone(phone);
	inquiry.setEmail(email);
	inquiry.setContent(content);
	
	inquiryDao.insert(inquiry);
	
	out.print("<script>alert('고객님의 문의가 고객센터로 전달되었습니다.'); location.href='inquiry.jsp';</script>");
	
	
	

%>