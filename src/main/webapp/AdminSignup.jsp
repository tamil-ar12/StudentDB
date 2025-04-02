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
	 * {
       
        box-sizing: border-box;
        font-family: Arial, sans-serif;
    }
     body {
        
        background: linear-gradient(100deg, #1e3c72, #2a5298);
    }
	div	{
		border:1px solid #9FE2BF;
		min-height:70vh;
		width:40%;
		text-Align:center;
		background-color:#00FF00;
		border-radius:15px;
		margin-left:350px;
		margin-top:70px;
		box-shadow: 0px 10px 30px rgba(0, 0, 0, 0.6);
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
		transform: scale(1.06);
	}
	input[type=submit]:active{
		background-color:red;
	}
	#aid{
		margin-left:76px;
	}
	
	#aname{
		margin-left:60px;
	}
	#acontact{
		margin-left:45px;
	}
	#aemail{
		margin-left:65px;
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
	h2{
	border-bottom:2px solid black;
	padding-bottom:10px;
	border-bottom-right-radius:10px;
	border-bottom-left-radius:10px;
	}

	/* #eye{
	display:none
	
	} */
	#eyehide{
    margin-left:-28px;
		
	}
	i {
    position: absolute;
    cursor: pointer;
    font-size: 18px;
    margin-top:3.5px;
}
</style>
</head>
<body>
	<div>
	<h2>Admin Signup Page</h2>
	<form action="adminsignup" method="get" onsubmit="return fun()">
	<label for="aid">S.id :</label>
	<input type="number" id="aid" name="id" required><br><br>
	<label for="aname">Name :</label>
	<input type="text" id="aname" name="name" required><br><br>
	<label for="acontact">Contact :</label>
	<input type="tel" id="acontact" name="contact" required><br><br>
	<label for="aemail">Email :</label>
	<input type="email" id="aemail" name="email" required><br><br>
	<label for="apss">Password :</label>
	<input type="password" id="apass" name="pass" required>
	<!-- <i id="eye" class="fa-solid fa-eye" onclick="return fun1()"></i> -->
	<i id="eyehide" class="fa-solid fa-eye-slash" onclick="return fun1()"></i>
	<br><br>
	<label for="arepss">Re-Password :</label>
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

function fun1() {
  
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

/* 

function fun1(){
	let eye=document.getElementById("eye")
	let eyehide=document.getElementById("eyehide")
	eye.style.marginLeft="270px"	
	eye.style.marginTop="-20px"	
	eyehide.style.marginLeft="270px"	
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
} */

</script>
</html>