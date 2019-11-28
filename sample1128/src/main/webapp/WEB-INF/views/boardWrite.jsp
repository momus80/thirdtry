<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/board/insert">
		<div>
			<label>title</label><input name="title">
		</div>
		<div>
			<label>TextArea</label><textarea rows="3" name="content"></textarea>
		</div>
		<div>
			<label>Writer</label><input name="w_id">
		</div>
		<button>Write</button>
	</form>
</body>
</html>