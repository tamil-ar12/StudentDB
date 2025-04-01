<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ page import="Student.StudentDAO" %>
<%@ page import="Student.StudentDTO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
 	* {
       
        box-sizing: border-box;
        font-family: Arial, sans-serif;
    }
     body {
        
        background: linear-gradient(100deg, #1e3c72, #2a5298);
    }
	div	{
	min-height:70vh;
	width:70%;
	text-Align:center;
	background-color: #fbfcfc ;
	border-radius:15px;
	margin-left:200px;
	margin-top:70px;
	box-shadow: 0px 10px 30px rgba(0, 0, 0, 0.6);
	padding-top:10px;
	}
	table,th,td{
		border:1px solid black;
		border-collapse:collapse;
		padding:10px 25px 10px 25px;
		text-align:center;
		margin-left:40px;
		
	} 
	th{
	background-color: orange;
	}
	#name{
		padding:0px 80px	;
	}
	
	#addst{
	color:#1d8516;
	border:2px solid #1d8516;
	padding:7px 15px 7px 15px;
	} 
	
	#logout{
	color:red;
	border:2px solid red;
	margin-left:300px;
	padding:7px 30px 7px 30px;	
	} 

	.btn{
	margin-left:20px;
	margin-top:20px;
	text-decoration:none;
	display:inline-block;
	padding:5px;
	color:white;
	margin-bottom:40px;
	border-radius:5px;
	color:black;
	
	}
	#edit{
		text-decoration:none;
		color:green;
		font-weight:bold;
	}
	#edit:hover{
	text-decoration:underline;
	
	}
	#del{
		text-decoration:none;
		color:red;
		font-weight:bold;
	}
	#del:hover{
	text-decoration:underline;
	
	}
	
	#addst:hover{
	border:2px solid #1d8516;
	background-color:#1d8516 ;
	color:white;
	transform: scale(1.07);
	}
	#logout:hover{
	border:2px solid red;
	background-color:red ;
	color:white;
	transform: scale(1.07);
	}
   
</style>
</head>
<body>
<div>
<h1>Admin home</h1>
<table>
	<thead>
		<tr>
			<th>Id</th>
			<th id="name">Name</th>
			<th>Physics</th>
			<th>Chemistry</th>
			<th>Maths</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
	</thead>
	
	<% List<StudentDTO> students =(List) request.getAttribute("students"); %>
	<% for(StudentDTO student: students){ %>
	
 	<tr>
	<td><%= student.getId() %></td>
	<td><%= student.getName() %></td>
	<td><%= student.getPhysics() %></td>
	<td><%= student.getChemistry() %></td>
	<td><%= student.getMaths() %></td>
	<td><a id="edit" href="update?id=<%= student.getId() %>" onclick="UpdateStudent.jsp">Edit</a></td>
	<td><a id="del" href= "delete?id=<%= student.getId() %>" >Delete</a></td>
	</tr> 
	
	<% } %>
	
</table>
<a class="btn" id="addst" href="AddStudent.jsp">Add Student</a>
<a class="btn" id="logout" href="Index.html">Logout</a>
</div>
</body>
</html>