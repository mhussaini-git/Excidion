<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="Model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Phone Numbers</title>
</head>
<body>
	<center>
		<a href="index.jsp"><button>Add Phone</button></a>
		<a href="showphone.jsp"><button>Show Phone</button></a>
		<h1>Add Phone</h1>
	
		<form method="post" action="InsertServlet">
		<label>First Name:<input type="text" name="firstname"></label><br>
		<label>Last Name:<input type="text" name="lastname"></label><br>
		<label><input type="submit" value="Add" name="phone"></label><br>		
		</form>
	
	</center>
	
	
	
	
</body>
</html>