<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Event Details</title>

<style>
body{
	background-color:;
}

h1{
	text-align:center;
}

table{
   border:solid 1px black;
	background-color:#f3f3f3;
	text-align:center;
}

table th{
	background-color:#ff0ff0;
	color:white;
}

table tr:nth-child(odd) { 
	background-color: lightgray; 
} 

table tr:nth-child(even) { 
	background: lightblue; 
	}


</style>
</head>

<body>
	<h1>View Employee data</h1>
	<table border="0"  cellpadding="10" style="border-collapse:collapse; margin:15vh auto">
		<tr>
			<th>Id</th>
			<th>Title</th>
			<th>Location</th>
			<th>Date</th>
			<th>Guest</th>
			<th colspan="2">Actions</th>
		</tr>
		
		<%
		ResultSet rs = (ResultSet)request.getAttribute("rs");
		while(rs.next()){
		%>
			
		<tr>
			<td><%= rs.getInt(1) %></td>
			<td><%= rs.getString(2)%></td>
			<td><%= rs.getString(3) %></td>
			<td><%= rs.getString(4) %></td>
			<td><%= rs.getString(5) %></td>
			<td><a href="delete?id=<%= rs.getInt(1) %>"><button>Delete</button></a></td>
			<td><a href="updatepage?id=<%= rs.getInt(1) %>"><button>update</button></a></td>
			
		</tr>	
		
		<% 	
		}
		%>
		
	</table>
</body>
</html>