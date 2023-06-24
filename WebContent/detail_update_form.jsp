<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Detail</title>
</head>
<body>

<form action="detail_update.htm" method="post">
	<table align="center">
		<tr>
			<td>
				<h1 style="background: red">UPDATE HERE</h1>
			</td>
		</tr>
		<tr>
			<td>
				<input type="hidden" name="studentId" value="<%= request.getParameter("studentId") %>">
			</td>
		</tr>
		<tr>
			<td>
				student Name:
			</td>
			<td>
				<input type="text" name="studentName" value="<%= request.getParameter("studentName") %>">
			</td>
		</tr>
		<tr>
			<td>
				Book name:
			</td>
			<td>
				<input type="text" name="bookName" value="<%= request.getParameter("bookName") %>">
			</td>
		</tr>
		<tr>
			<td>
				category:
			</td>
			<td>
				<input type="text" name="bookCategory" value="<%= request.getParameter("bookCategory") %>">
			</td>
		</tr>
		<tr>
			<td>
				Issued date:
			</td>
			<td>
				<input type="text" name="issuedDate" value="<%= request.getParameter("issuedDate") %>">
			</td>
		</tr>
		<tr>
			<td>
				Return date:
			</td>
			<td>
				<input type="text" name="returnDate" value="<%= request.getParameter("returnDate") %>">
			</td>
		</tr>
		<tr>
			<td>
				<a href="details_list.htm">Back</a>
			</td>
			<td>
				<input type="submit" value="Update">
			</td>
		</tr>
	</table>
</form>
</body>
</html>
