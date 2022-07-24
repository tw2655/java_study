<%@page import="reservation.ReviewDTO"%>
<%@page import="reservation.MotelDAO"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	int reservationNum = Integer.parseInt(request.getParameter("num"));
	String nickname = request.getParameter("nickname");
	int accommNum = Integer.parseInt(request.getParameter("accomm_num"));
	String roomName = request.getParameter("room_name");
	int score = Integer.parseInt(request.getParameter("rate"));
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	SimpleDateFormat format = new SimpleDateFormat("yyyy.MM.dd");
	String createDate = format.format(new Date());
	
	MotelDAO dao = new MotelDAO();
	ReviewDTO dto = new ReviewDTO();
	dto.setReservationNum(reservationNum);
	dto.setUserNickname(nickname);
	dto.setAccommNum(accommNum);
	dto.setRoomName(roomName);
	dto.setScore(score);
	dto.setTitle(title);
	dto.setContent(content);
	dto.setCreateDate(createDate);
	
	dao.insertReview(dto);
%>

<script>
alert("리뷰 작성이 완료되었습니다.");

</script>

<%
response.sendRedirect("myReservation.jsp");
%>