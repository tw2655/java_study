<%@page import="jstl_quiz.MemberDTO"%>
<%@page import="jstl_quiz.MemberDAO"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list</title>
</head>
<body>
	<%
		MemberDAO memberDao = new MemberDAO();
		ArrayList<MemberDTO> members = memberDao.selectAll();
		int count = 0;
	%>
	<table border="1">
		<tr>
			<th>아이디 </th>
			<th>비밀번호 </th>
			<th>이름 </th>
			<th>이메일 </th>
		</tr>
		<% 
			for(MemberDTO member : members){ 
			count++;
		%>
			<tr>
				<td><%=member.getId() %></td>
				<td><%=member.getPw() %></td>
				<td><%=member.getName() %></td>
				<td><%=member.getEmail() %></td>
			</tr>
		<%} %>
	</table>
	total record : <%=count %><br><br>
	<a href="index.jsp" style="text-decoration: none">인덱스 페이지로 이동</a>
	<%-- members 데이터 : <%=members.size() %> --%>
</body>
</html>



