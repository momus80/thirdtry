<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    body{
        margin: 0 auto;
        text-align: center;
    }
    #logo{
        margin-top: 60px;
    }
    #logo img{
        width: 400px;
    }
    button{
        border: 0px;
        width: 100px;
        height: 50px;
        margin-top: 20px;
        font-size: 2rem;
        background-color: transparent;
    }
    span{
        font-size: 2rem;
    }
</style>
</head>
<body>
    <div id="logo"><img src="/resources/salt-logo.png"></div>
	<form name="frm">
		아 이 디 &nbsp;&nbsp;: <input type="text" name="id"><br />
		비밀번호 : <input type="password" name="pwd"><br />
		<button class="login_btn">LOGIN</button><span>&nbsp;&nbsp;|</span>
		<button class="join_btn">JOIN</button>
	</form>
    <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script>
        $(function(){
            $(".join_btn").click(function(){
               document.frm.action = "/joinform";
                document.frm.submit();
            });
            $(".login_btn").click(function(){
               document.frm.action = "/login";
               document.frm.submit();
            });
        });
    </script>
</body>
</html>