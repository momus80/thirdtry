<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <style>
    *{
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }
    #wrap{
        text-align: center;
        font-size: 3rem;
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
        <form action="/board/insert">
		<div>
			<label>Title&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : </label><input name="title">
		</div>
		<div>
			<label>Content : </label><textarea rows="10" cols="95" name="content"></textarea>
		</div>
		<div>
			<label>Writer&nbsp;&nbsp; : </label><input name="w_id" readonly="readonly" value="${w_id}">
		</div>
		<button>Write</button>
	</form>
    </div>
</body>
</html>