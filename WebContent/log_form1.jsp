<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- Include Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
<form action="login1.htm" method="post" class="container mt-4">
	<div class="text-center">
		<h1 class="bg-danger text-white">User Login</h1>
	</div>
	<div class="form-group">
		<label for="userName">User Name:</label>
		<input type="text" name="userName" value="<%= request.getParameter("userName") %>" class="form-control">
		<small class="text-danger"><%= request.getAttribute("userNameError") %></small>
	</div>
	<div class="form-group">
		<label for="userPass">User Password:</label>
		<input type="password" name="userPass" value="<%= request.getParameter("userPass") %>" class="form-control">
		<small class="text-danger"><%= request.getAttribute("userPassError") %></small>
	</div>
	<div class="text-center">
		<a href="user.jsp" class="btn btn-secondary mr-2">Back</a>
		<input type="submit" value="Login" class="btn btn-primary">
	</div>
</form>
<!-- Include Bootstrap JS (optional, if you need any JavaScript functionality) -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
