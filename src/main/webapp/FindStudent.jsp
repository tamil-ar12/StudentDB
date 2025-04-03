<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
<style>
	* {
       
        box-sizing: border-box;
        font-family: Arial, sans-serif;
    }
     body {
        
        background: linear-gradient(100deg, #1e3c72, #2a5298);
    }
	div	{
		
		height:35vh;
		width:40%;
		text-Align:center;
		background-color: #CCCCFF ;
		border-radius:15px;
		margin-left:350px;
		margin-top:100px;
		padding:3px;
		padding: 20px;
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
	 h1 {
     border-bottom: 2px solid black;
     padding-bottom: 10px;
     margin-bottom: 15px;
     color:red;
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
</style>
<body>
	<div>
	<a href="index.html"><i class='bx bx-arrow-back'></i></a>
	<h1>Find the Students Details</h1>
	<form action="findstudent" method="get">
	<label for="sid">S.id :</label>
	<input type="number" id="sid" name="id" required><br><br>
	<input type="submit">
	</form>
	</div>
</body>
</html>