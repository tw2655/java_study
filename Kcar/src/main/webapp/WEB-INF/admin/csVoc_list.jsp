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
	<h3>Ī��/���� ����Ʈ</h3>
	<table border="1">
		<tr>
			<th>��������</th>
			<th>����</th>
			<th>����</th>
			<th>����</th>
			<th>�̸���</th>
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