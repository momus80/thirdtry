<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	JOIN
	<form action="/join" method="post">
		아이디 : <input name="id" type="text"> <br>
		비밀번호 : <input name="pwd" type="password"><br>
		이름 : <input name="name"><br>
		이메일 : <input name="email" type="text"><br>
		<input type="submit" value="회원가입">
	</form>
</body>
</html>