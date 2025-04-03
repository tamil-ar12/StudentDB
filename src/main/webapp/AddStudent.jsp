<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
<style>
	* {
       
        box-sizing: border-box;
        font-family: Arial, sans-serif;
    }
     body {
        
        background: linear-gradient(100deg, #1e3c72, #2a5298);
    }
	div	{
		border:1px solid black;
		height:64vh;
		width:40%;
		text-Align:center;
		background-color:#DFFF00;
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
	}
	input[type=submit]:hover{
		background-color:darkblue;
	}
	input[type=submit]:active{
		background-color:red;
	}
	#sid{
		margin-left:50px;
	}
	
	#sname{
		margin-left:37px;
	}
	#sphysics{
		margin-left:25px;
	}
	#schemistry{
		margin-left:6px;
	}
	#smaths{
		margin-left:35px;
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
	display:inline-block;
	padding:5px;
	font-size:larger;
	width:40px;
	background-color:#454545;
	color:white;
	}
	a:hover{
	background-color:#999999;
	color:black;
	}
</style>
</head>
<body>
	<div>
	<a href="AdminHome.jsp"><i class='bx bx-arrow-back'></i></a>
	<h1>Add the Student Details</h1>
	<form action="addstudent" method="get">
	<label for="sid">S.id:</label>
	<input type="number" id="sid" name="id" required><br><br>
	<label for="sname">Name:</label>
	<input type="text" id="sname" name="name" required><br><br>
	<label for="sphysics">Physics:</label>
	<input type="number" id="sphysics" name="physics" required><br><br>
	<label for="schemistry">Chemistry:</label>
	<input type="number" id="schemistry" name="chemistry" required><br><br>
	<label for="smaths">Maths:</label>
	<input type="number" id="smaths" name="maths" required><br><br>
	<input type="submit">
	
	</form>
	</div>
</body>
</html>

