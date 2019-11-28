<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>게시판</h1>
	<form method="get" action="/login">
		아 이 디  : <input type="text" name="id">
		비밀번호 : <input type="password" name="pwd">
		<button class="login_btn">login</button>
	</form>
		
		<button class="join_btn" onclick="location.href='/joinform'">join</button>

</body>
</html>