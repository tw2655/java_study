<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>register</title>
<script src="check.js"></script>
</head>
<body>
	<%@ include file="header.jsp" %>
	
	<div align="center">
		<h1>회원 등록</h1>
		<table>
		<tr><td>
			<form action="registerService.jsp" method="post" id="f">
				<input type="text" name="id" placeholder="아이디" id="id"> (*필수 항목) <br>
				<input type="password" name="pwd1" placeholder="비밀번호" id="pwd1"><br>
				<input type="password" name="pwd2" placeholder="비밀번호 확인 " id="pwd2" onchange="pwCheck()">
				<label id="label">(*필수 체크)</label><br>
				<input type="text" name="name" id="name" placeholder="이름" ><br>
				<input type="text" name="addr" placeholder="주소" ><br>
				<input type="text" name="tel" placeholder="전화번호" ><br>
				<input type="button" value="회원가입" onclick="allCheck()"><br>
			</form>
		</td></tr>
		</table>
	</div>
	<%@ include file="footer.jsp" %>
</body>
</html>