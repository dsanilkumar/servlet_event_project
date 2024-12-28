<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert Event details</title>

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
	<h1>Create Event</h1>
	<form action="create" >
		<input type="text" name="id" placeholder="Enter Event Id">
		<input type="text" name="title" placeholder="Enter Event Title">
		<input type="text" name="loc" placeholder="Enter Event Location">
		<input type="text" name="date" placeholder="Enter Event date">
		<input type="text" name="guest" placeholder="Enter Event Guest Name">
		
		<button type="submit">Submit</button>
	</form>
	
	<br><br><br><br><br><br>
</body>
</html>