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
	<form name="frm">
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
		<button id="remove">REMOVE</button>
		<button id="update">UPDATE</button>
		<c:forEach var="list" items="${list }">
			<div>
				${list.w_id } : ${list.content }
				
				<c:if test="${id eq list.w_id }">
					<button class="delete" name="rno" value="${list.rno }">x</button><br>
				</c:if>
			</div>
		</c:forEach>
		<c:forEach var="item" items="${reply}">
			<a href="board/get?replyNum=${item}&bno=${bno.bno}">[${item}]</a>
		</c:forEach>
		<span>${id } : </span>
		<textarea rows="5" cols="20" name="reply-content"></textarea>
		<button id="reply">REPLY</button>
	</form>
	<button onclick="location.href='/board'">list</button>
	<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script>
		$(function(){
			$("#update").click(function(){
				document.frm.action="/board/updateform";
				document.frm.submit();
			});
			$("#reply").click(function(){
				document.frm.action="/board/insertreply";
				document.frm.submit();
			});
			$(".delete").click(function(){
				var rno = $(this).value;
				document.frm.action="/board/deletereply?rno="+rno;
				document.frm.submit();
			});
			$("#remove").click(function(){
				document.frm.action="/board/remove";
				document.frm.submit();
			});
		});
	</script>
</body>
</html>