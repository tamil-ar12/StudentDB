<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	
	div	{
		border:1px solid black;
		min-height:70vh;
		width:40%;
		text-Align:center;
		background-color:#9FE2BF;
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
	#aid{
		margin-left:74px;
	}
	
	#aname{
		margin-left:57px;
	}
	#acontact{
		margin-left:45px;
	}
	#aemail{
		margin-left:58px;
	}
	#apass{
		margin-left:30px;
	}
	#arepass{
	margin-left:3px;
	
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
	position:absolute;
	top:90px;
	left:350px;
	margin-left:20px;
	margin-top:20px;
	text-decoration:none;
	border-radius:20px;
	background-color:#999999;
	display:inline-block;
	padding:5px;
	font-size:larger;
	color:black;
	width:40px;
	}
	a:hover{
	background-color:#454545;
	color:white;
	}
	#eye{
	display:none
	
	}
	#eyehide{
    margin-left:-33px;
		
	}
	
</style>
</head>
<body>
	<div>
	<h1>Admin Signup Page</h1>
	<form action="adminsignup" method="get" onsubmit="return fun()">
	<label for="aid">S.id:</label>
	<input type="number" id="aid" name="id" required><br><br>
	<label for="aname">Name:</label>
	<input type="text" id="aname" name="name" required><br><br>
	<label for="acontact">Contact:</label>
	<input type="tel" id="acontact" name="contact" required><br><br>
	<label for="aemail">Email:</label>
	<input type="email" id="aemail" name="email" required><br><br>
	<label for="apss">Password:</label>
	<input type="password" id="apass" name="pass" required>
	<i id="eye" class="fa-solid fa-eye" onclick="return fun1()"></i>
	<i style="" id="eyehide" class="fa-solid fa-eye-slash" onclick="return fun1()"></i>
	<br><br>
	<label for="arepss">Re-Password:</label>
	<input type="text" id="arepass" name="repass" required><br><br>
	<input type="submit" >
	
	</form>
	</div>
</body>
<script>
let pass=document.getElementById("apass");
let repass=document.getElementById("arepass");
function fun(){
	if(pass.value===repass.value){
		return true;
	}
	else{
		alert("password and repassword are not same")
		return false;
	}
}

function fun1(){
	let eye=document.getElementById("eye")
	let eyehide=document.getElementById("eyehide")
	eye.style.marginLeft="250px"	
	eye.style.marginTop="-20px"	
	eyehide.style.marginLeft="250px"	
	eyehide.style.marginTop="-20px"	
	if(pass.type=="password"){
		pass.type="text"
		eye.style.display="block"
		eyehide.style.display="none"
	
	}
	else{
		pass.type="password"
		eye.style.display="none"
		eyehide.style.display="block"
	}
}

</script>
</html>