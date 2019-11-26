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
	<form action = "/board/register" method="post" role="form">
		<div>
			<label>title</label><input name="title">
		</div>
		<div>
			<label>TextArea</label><textarea rows="3" name="content"></textarea>
		</div>
		<div>
			<label>Writer</label><input name="writer">
		</div>
		<button type="submit">Submit Button</button>
		<button type="reset">Reset Button</button>
	</form>
</body>
</html>