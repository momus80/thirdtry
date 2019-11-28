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
	<form action="/board/update">
		<div>
			<label>BNO</label><input name="bno" value='<c:out value="${board.bno }"/>' readonly="readonly">
		</div>
		<div>
			<label>title</label><input name="title" value='<c:out value="${board.title }"/>'>
		</div>
		<div>
			<label>TextArea</label><textarea rows="3" name="content"><c:out value="${board.content }"/></textarea>
		</div>
		<div>
			<label>Writer</label><input name="w_id"  value='<c:out value="${board.w_id }"/>' readonly="readonly">
		</div>
		<button>UPDATE</button>
	</form>
	<button onclick="location.href='/board'">list</button>
</body>
</html>