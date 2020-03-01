<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/login.css">
<meta charset="UTF-8">
<title>登录</title>
<script type="text/javascript" src="js/jquery-3.4.1.js"></script>
        <script type="text/javascript">
        	function check(){
        		var name=document.getElementById("name").value;
        		if(name==null||name==""){
        			alert("用户名不能为空")
        			return false;
        		}
        		var pwd=document.getElementById("pwd").value;
        		if(pwd==null||pwd==""){
        			alert("密码不能为空")
        			return false;
        		}
        		var code=document.getElementById("code").value;
        		
        	}
        	function changeImg(){
        		//alert("!");
        		var codeImg=document.getElementById("codeImg") ;
        		//console.log(code);
        		codeImg.src="/library/KaptchaServlet?time="+new Date().getTime();
        	}
</script>
</head>
<body>
	<div class="login">
            <div class="header">
                <h1>
                    <a href="#">登录</a>
                </h1>
                <button></button>
            </div>
           <p>${info }</p>
            <form action="/library/LoginServlet" method="get" onsubmit="check()">
                <div class="name">
                    <input type="text" id="name" name="username">
                    <p></p>
                </div>
                <div class="pwd">
                    <input type="password" id="pwd" name="password">
                    <p></p>
                </div>
                <div class="code">
                    <input type="text" id="checkcode" name="checkcode" style="width: 150px">
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <img src="/library/KaptchaServlet" id="codeImg" onclick="return changeImg()" style="width: 150px;height: 42px;vertical-align: middle;">
                    <p></p>
                </div>
                <div class="btn-red">
                    <input type="submit" value="登录" id="login-btn">
                </div>
            </form>
        </div>
</body>
</html>