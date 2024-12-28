<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
input,button
{	display:block;
	margin:2vh auto;
	height:5vh; 
	width:20vw;
	text-align:center;
}
h1
{
	text-align:center;
}
</style>
</head>
<body>
	
	<h1>Update Employee</h1>
	<%
		ResultSet rs = (ResultSet)request.getAttribute("rs");
	%>
		
	<form action="update">
		<input type="text" name="id"  value="<%= rs.getInt(1) %>">
		<input type="text" name="title" value="<%= rs.getString(2)%>">
		<input type="text" name="loc"  value="<%= rs.getString(3) %>">
		<input type="text" name="date"  value="<%= rs.getString(4) %>">
		<input type="text" name="guest"  value="<%= rs.getString(5) %>">
		
		<button type="submit">Submit</button>
	</form>
</body>
</html>