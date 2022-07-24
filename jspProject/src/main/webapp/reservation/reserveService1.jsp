<%@page import="reservation.ReservationDAO"%>
<%@page import="reservation.ReservationDTO"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String email = (String) session.getAttribute("email");
	if (email.isEmpty()){
		out.print("<script>alert('로그인 후 이용가능합니다.'); location.href='login.jsp'</script>");
	}

	SimpleDateFormat getFormat = new SimpleDateFormat("yyyy-MM-dd");
	SimpleDateFormat setFormat = new SimpleDateFormat("yyyy.MM.dd E ");
	
	int price = Integer.parseInt(request.getParameter("price"));
	int accomNum = Integer.parseInt(request.getParameter("accomNum"));
	int roomNum = Integer.parseInt(request.getParameter("roomNum"));
	String visit = request.getParameter("visit");

	String selDate = setFormat.format(getFormat.parse(request.getParameter("selDate")));
	String selDate2 = setFormat.format(getFormat.parse(request.getParameter("selDate2")));
	String checkin = request.getParameter("checkin");
	String checkout = request.getParameter("checkout");
	
	selDate = selDate + checkin;
	selDate2 = selDate2 + checkout;

	ReservationDTO dto = new ReservationDTO();
	dto.setPrice(price);
	dto.setAccommNum(accomNum);
	dto.setRoomNum(roomNum);
	dto.setCheckIn(selDate);
	dto.setCheckOut(selDate2);
	dto.setUserEmail(email);
// 	dto.setUserEmail("test@naver.com");
	dto.setVisitMethod(visit);
	
	ReservationDAO reserveDao = new ReservationDAO();
	reserveDao.insertReservation(dto);
	
%>
<script>
alert('예약 완료!!');
location.href = "../member/myReservation.jsp";
</script>