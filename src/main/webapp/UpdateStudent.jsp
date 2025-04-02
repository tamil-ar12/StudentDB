<%@ page import="Student.StudentDTO" %>
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
		height:60vh;
		width:40%;
		text-Align:center;
		background-color:#58d68d;
		border-radius:15px;
		margin-left:350px;
		margin-top:100px;
		 padding-top:7px;
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
		margin-left:70px;
	}
	
	#sname{
		margin-left:40px;
	}
	#sphysics{
		margin-left:20px;
	}
	#schemistry{
		margin-left:4px;
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
	h2{
	 color: #17202a;
	
	}
</style>
</head>
<body>

<% StudentDTO s=(StudentDTO)request.getAttribute("student");   
  %>
<div>
<h2> Edit Student</h2>
    <form action="update" method="get">    
      <label for="sid">ID :</label>
     <input type="number" id="sid" name="id" required value="<%= s.getId() %>" readonly><br><br>
     
     <label for="sname">Name :</label>
     <input type="text" id="sname" name="name" required value="<%= s.getName() %>"><br><br>
     
     <label for="sphysics">Physics :</label>
     <input type="number" id="sphysics" name="physics" required value="<%= s.getPhysics()%>"><br><br>
     
     <label for="schemistry">chemistry :</label>
     <input type="number" id="schemistry" name="chemistry" required value="<%= s.getChemistry()%>"><br><br>
     
     <label for="smaths">Maths :</label>
     <input type="number" id="smaths"  name="maths" required value="<%= s.getMaths() %>"><br><br>
     <input type="submit" value="Submit">
    </form>
</div>
</body>
</html>

