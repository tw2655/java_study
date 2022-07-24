<%@page import="reservation.ReservationDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String num = request.getParameter("num");
	ReservationDAO reserveDao = new ReservationDAO();
	reserveDao.deleteReservation(num);
	
%>
<script>alert("예약내역에서 삭제가 완료되었습니다."); location.href="myReservation.jsp";</script>