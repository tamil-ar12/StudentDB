<%@page import="Admin.Login"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	 * {
       
        box-sizing: border-box;
        font-family: Arial, sans-serif;
    }
     body {
        
        background: linear-gradient(100deg, #1e3c72, #2a5298);
    }
    
	div	{
		border:1px solid #6495ED;
		height:50vh;
		width:40%;
		text-Align:center;
		background-color:#40E0D0;
		border-radius:15px;
		margin-left:350px;
		margin-top:100px;
		box-shadow: 0px 10px 30px rgba(0, 0, 0, 0.6);
	}
	
	input[type=submit]{
		padding:10px;
		background-color:blue;
		width:8pc;
		border:none;
		border-radius:10px;
		color:white;
		font-size:15px;
	}
	input[type=submit]:hover{
		background-color:darkblue;
		transform: scale(1.06);
		
	}
	input[type=submit]:active{
		background-color:red;
	}
	
	label{
	color:brown;
	 font-size:large;
	 font-weight:bold;
	}
	input{
	padding:3px;
	}
	h2{
	border-bottom:2px solid black;
	padding-bottom:10px;
	border-bottom-right-radius:10px;
	border-bottom-left-radius:10px;
	}
	a{
	
	margin-left:20px;
	margin-top:20px;
	text-decoration:none;
	background-color:green;
	display:inline-block;
	padding:5px;
	color:white;
	padding:7px;
	border-radius:5px;
	
	}
	#aemail{
		margin-left:37px;
	}
	a:hover{
	background-color:red;
	color:white;
	transform: scale(1.07);
	}
</style>
</head>
<body>
	<div>
	<h2>Admin Login Page</h2>
	<form action="login" method="get">
	<label for="aemail">Email:</label>
	<input type="email" id="aemail" name="email" required><br><br>
	<label for="apss">Password:</label>
	<input type="password" id="apass" name="pass" required><br><br>
	
	<input type="submit">
	</form>
	<span>Not User?</span>
	<a href="AdminSignup.jsp">SignUp</a>
	</div>
</body>
</html>