<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>�ڹٽ�ũ��Ʈ</title>
<script language="javascript">
<!--
function agreeCheck(frm)
{
   if (frm.checkButton.disabled==true)
    frm.checkButton.disabled=false
   else
    frm.checkButton.disabled=true
}



</script>
</head>
<body>
<form name="form"> 
<textarea cols="40" rows="5"> 
���뿡 �����ϸ� üũ�ڽ��� Ŭ���Ͻ���
��� ���Ǹ� ���غ����� ���Ǹ� ����
������ ������~~~~
</textarea><br>
<input type="checkbox" name="agree" onClick="agreeCheck(this.form)">
���� ���ۿ� �����Ͻʴϱ�?

<input type="button" name="checkButton" value=" Ȯ �� " disabled>
</form>
</body>
</html>