<%@page import="java.sql.ResultSet"%>
<%@page import="Admin.Login"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="Student.StudentDTO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
      integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"/>
<style>
	 * {
       
        box-sizing: border-box;
        font-family: Arial, sans-serif;
    }
     body {
        
        background: linear-gradient(100deg, #1e3c72, #2a5298);
    }
    
	.container{
		border:1px solid #6495ED;
		height:50vh;
		width:40%;
		text-Align:center;
		background-color:#40E0D0;
		border-radius:15px;
		margin-left:350px;
		margin-top:100px;
		box-shadow: 0px 10px 30px rgba(0, 0, 0, 0.6);
		padding: 20px;
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
	 h2 {
     border-bottom: 2px solid black;
     padding-bottom: 10px;
     margin-bottom: 15px;
     color:red;
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
	#eyehide{
    margin-left:-28px;
		
	}
i {
    position: absolute;
    cursor: pointer;
    font-size: 18px;
    margin-top:3.5px;
}
#error{
color:red;
position:absolute;
top:230px;
left:584px;
font-size:14px;
font-weight:bold;
 font-family: "Arial, Helvetica, sans-serif";
}
	
</style>
</head>
<body>
	<div class="container">
	<h2>Admin Login Page</h2>
	<form action="login" method="get">
	<label for="aemail">Email :</label>
	<input type="email" id="aemail" name="email" required><br><br>
	    <% String error = (String) request.getAttribute("message"); %>
    <% if (error != null) { %>
        <p id="error"><%= error %></p>
    <% } %>
	<label for="apss">Password :</label>
	<input type="password" id="apass" name="pass" required>
	<i id="eyehide" class="fa-solid fa-eye-slash" onclick="return fun1()"></i><br><br>
	<input type="submit">
	</form>
	<span>Not User?</span>
	<a href="AdminSignup.jsp">SignUp</a>
	</div>
</body>
<script>
	function fun1() {
		let pass=document.getElementById("apass");
	    let eyehide = document.getElementById("eyehide");

	    if (pass.type === "password") {
	        pass.type = "text";
	        eyehide.classList.remove("fa-eye-slash");  
	        eyehide.classList.add("fa-eye");           
	    } else {
	        pass.type = "password";
	        eyehide.classList.remove("fa-eye");        
	        eyehide.classList.add("fa-eye-slash");   
	    }
	}
	</script>
</html>
