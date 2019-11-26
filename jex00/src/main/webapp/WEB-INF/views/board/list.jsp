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
	<h1>List page</h1>
	<table>
	<c:forEach items="${list }" var="board">
		<tr>
			<td><a href="/board/get?bno=<c:out value='${board.bno }'/>"><c:out value="${board.bno }"/></a></td>
			<td><c:out value="${board.title }"/></td>
			<td><c:out value="${board.content }"/></td>
			<td><fmt:formatDate pattern="yyyy-MM-dd" value="${board.regdate }" /></td>
			<td><fmt:formatDate pattern="yyyy-MM-dd" value="${board.updatedate }" /></td>
		</tr>
	</c:forEach>
	</table>
	<button onclick="location.href='/board/register'">register</button>
</body>
</html>