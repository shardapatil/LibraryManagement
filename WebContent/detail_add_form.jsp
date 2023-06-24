<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Details</title>
<!-- Include Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <form action="detail_add.htm" method="post">
        <table class="table table-bordered" align="center">
            <tr>
                <td>
                    <h1 style="background: red">ADD DETAILS</h1>
                </td>
            </tr>
            <tr>
                <td>Student Name:</td>
                <td><input type="text" name="studentName" class="form-control" /></td>
            </tr>
            <tr>
                <td>Book Name:</td>
                <td><input type="text" name="bookName" class="form-control" /></td>
            </tr>
            <tr>
                <td>Category:</td>
                <td><input type="text" name="bookCategory" class="form-control" /></td>
            </tr>
            <tr>
                <td>Issued Date:</td>
                <td><input type="text" name="issuedDate" class="form-control" /></td>
            </tr>
            <tr>
                <td>Return Date:</td>
                <td><input type="text" name="returnDate" class="form-control" /></td>
            </tr>
            <tr>
                <td>
                    <a href="home.jsp" class="btn btn-primary">Back</a>
                </td>
                <td>
                    <input type="submit" value="Add" class="btn btn-success">
                </td>
            </tr>
        </table>
    </form>
</div>
<!-- Include Bootstrap JavaScript (optional) -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
