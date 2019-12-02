<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
<style>
    *{
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }
    #wrap{
        margin: 0 auto;
        margin-top: 20px;
        width: 70%;
        text-align: center;
        position: relative;
        font-size: 2rem;
    }
    input{
        width: 690px;
        height: 50px;
        margin-bottom: 20px;
    }
    button{
        border: 0;
        background-color: transparent;
        font-size: 2rem;
    }
</style>
</head>
<body>
<div id="wrap">
	<form action="/board/update">
		<div>
			<label>BNO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: </label><input name="bno" value='<c:out value="${board.bno }"/>' readonly="readonly">
		</div>
		<div>
			<label>Title &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: </label><input name="title" value='<c:out value="${board.title }"/>'>
		</div>
		<div>
			<label>Content : </label><textarea rows="10" cols="100" name="content"><c:out value="${board.content }"/></textarea>
		</div>
		<div>
			<label>Writer&nbsp;&nbsp; : </label><input name="w_id"  value='<c:out value="${board.w_id }"/>' readonly="readonly">
		</div>
		<button>UPDATE</button>
	</form>
	<button onclick="location.href='/board'">Back to list</button>
</div>
</body>
</html>