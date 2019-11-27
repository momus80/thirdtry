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
	<form name="frm" action="/board/remove">
		<div>
			<label>BNO</label><input name="bno" value='<c:out value="${board.bno }"/>' readonly="readonly">
		</div>
		<div>
			<label>title</label><input name="title" value='<c:out value="${board.title }"/>' readonly="readonly">
		</div>
		<div>
			<label>TextArea</label><textarea rows="3" name="content" readonly="readonly"><c:out value="${board.content }"/></textarea>
		</div>
		<div>
			<label>Writer</label><input name="w_id"  value='<c:out value="${board.w_id }"/>' readonly="readonly">
		</div>
		<button>REMOVE</button>
		<button id="update">UPDATE</button>
	</form>
	<button onclick="location.href='/board'">list</button>
	<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script>
		$(function(){
			$("#update").click(function(){
				document.frm.action="/board/updateform";
				document.frm.submit();
			});
		});
	</script>
</body>
</html>