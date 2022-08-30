<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div align="center">
	<h3>칭찬/접수 리스트</h3>
	<table border="1">
		<tr>
			<th>문의유형</th>
			<th>제목</th>
			<th>내용</th>
			<th>고객명</th>
			<th>이메일</th>
		</tr>
		<c:forEach var ="lists" items="${list }">
			<th>${lists.s_category }</th>
			<th>${lists.s_title }</th>
			<th>${lists.s_content }</th>
			<th>${lists.s_id }</th>
			<th>${lists.s_replyValue }</th>
			
		</c:forEach>
		<tr>
	</table>
</div>
</body>
</html>