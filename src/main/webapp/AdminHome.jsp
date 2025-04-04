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
	.container	{
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
		margin-left:35px;
		
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
	transition: all 0.3s;
	}
	#edit{
		text-decoration:none;
		color:green;
		font-weight:bold;
		font-size:16px;
		border:none;
		background-color:white;
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
<div class="container">
<h1>Admin Dashboard</h1>
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
	<tbody id="studentTable">
	<% StudentDAO dao = new StudentDAO();
    List<StudentDTO> studentList = dao.getAllStudents(); %>
	<% for(StudentDTO student: studentList){ %>
 	<tr>
	<td><%= student.getId() %></td>
	<td><%= student.getName() %></td>
	<td><%= student.getPhysics() %></td>
	<td><%= student.getChemistry() %></td>
	<td><%= student.getMaths() %></td>
	<td>
	 <form action="editstudent" method="get">
     <input type="hidden" name="id" value="<%= student.getId() %>">
     <button id="edit">Edit </button>
     </form>
	</td>
	<td><a id="del" href= "delete?id=<%= student.getId() %>" >Delete</a></td>
	</tr> 
	
	<% } %>
	</tbody>
</table>
<a class="btn" id="addst" href="AddStudent.jsp">Add Student</a>
<a class="btn" id="logout" href="index.html">Logout</a>
</div>
</body>
</html> 
