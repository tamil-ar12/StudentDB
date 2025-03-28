<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	
	div	{
		border:1px solid black;
		height:50vh;
		width:40%;
		text-Align:center;
		background-color:#6495ED;
		border-radius:5px;
		margin-left:350px;
		margin-top:100px;
	}
	
	input[type=submit]{
		padding:10px;
		background-color:blue;
		width:8pc;
		border:none;
		border-radius:5px;
		color:white;
	}
	input[type=submit]:hover{
		background-color:darkblue;
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
	h1{
	 color: #17202a;
	}
	a{
	border:1px solid black;
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
		margin-left:28px;
	}
	a:hover{
	background-color:red;
	color:white;
	}
</style>
</head>
<body>
	<div>
	<h1>Admin Login Page</h1>
	<form action="" method="get">
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