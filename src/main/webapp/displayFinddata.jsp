<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="Student.StudentDTO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Marks Memo</title>
<style>
    * {
        box-sizing: border-box;
        font-family: Arial, sans-serif;
    }
	body {
        background: linear-gradient(100deg, #1e3c72, #2a5298);
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    } 
     .container {
        width: 50%;
        max-width: 400px;
        background-color: #f6ddcc;
        box-shadow: 0px 10px 30px rgba(0, 0, 0, 0.6);
        border-radius: 20px;
        padding: 20px;
        text-align: center;
    }
    h1 {
        border-bottom: 2px solid black;
        padding-bottom: 10px;
        margin-bottom: 15px;
        color:red;
    }
    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 10px;
    }
    th, td {
        padding: 10px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }
    td {
        background-color: #d5a6bd;
    }
    .back{
        display: block;
        margin-top: 10px;
        font-weight: bold;
        color:#d35400;
    }
    
</style>
</head>
<body>

<% 
    StudentDTO s = (StudentDTO) request.getAttribute("student");
    if (s != null) { 
%>

<div class="container">
    <h1>Student Marks Memo</h1>
    <table>
        <tr>
            <th>ID</th>
            <td><%= s.getId() %></td>
        </tr>
        <tr>
            <th>Name</th>
            <td><%= s.getName() %></td>
        </tr>
        <tr>
            <th>Physics</th>
            <td><%= s.getPhysics() %></td>
        </tr>
        <tr>
            <th>Chemistry</th>
            <td><%= s.getChemistry() %></td>
        </tr>
        <tr>
            <th>Maths</th>
            <td><%= s.getMaths() %></td>
        </tr>
    </table>
    <a href="FindStudent.jsp" class="back">← Back to Find Student</a>
</div>

<% } else { %>
    <div class="container">
        <h1>Error</h1>
        <p style="color: red;">Student data not available.</p>
        <a href="FindStudent.jsp" class="back">← Back to Find Student</a>
    </div>
<% } %>

</body>
</html>
