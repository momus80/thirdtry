<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>
		<label>BNO</label><input name="bno" value=${board.bno } readonly="readonly">
	</div>
	<div>
		<label>title</label><input name="title" value="${board.title }">
	</div>
	<div>
		<label>TextArea</label><textarea rows="3" name="content">${board.content }</textarea>
	</div>
	<div>
		<label>Writer</label><input name="writer"  value="${board.writer }" readonly="readonly">
	</div>
	<button onclick="location.href='/board/modify?bno='${board.bno}''">Modify</button>
	<button onclick="location.href='/board/remove?bno='${board.bno}''">remove</button>
	<button onclick="location.href='/board/list'">LIST</button>
</body>
</html>