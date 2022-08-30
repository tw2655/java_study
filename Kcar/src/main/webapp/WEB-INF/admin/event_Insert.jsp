<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%@ include file="/WEB-INF/default/admin_header.jsp" %>
<form action="event_Insert" method="post">
<div align="center">
	<h3>이벤트 추가</h3>
	제목<input type="text" name ="e_title"><br><br>
	내용
	<textarea rows="20" cols="40" name="e_content"></textarea><br>
	이벤트시작날짜<input type ="text" name="e_startdate">
	이벤트종료날짜<input type ="text" name="e_enddate">
	<button>이벤트 추가</button>
</div>
</form>
<%@ include file="/WEB-INF/default/footer.jsp" %>
</body>
</html>