<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- Include Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>

<div class="container">
    <spr:form action="book_add.htm" method="post" commandName="books">
        <table class="table table-bordered" align="center">
            <tr>
                <td colspan="2" class="text-center bg-danger">
                    <h1>ADD BOOKS HERE</h1>
                </td>
            </tr>
            <tr>
                <td>Category:</td>
                <td>
                    <spr:input path="category" cssClass="form-control" />
                </td>
            </tr>
            <tr>
                <td>Book Name:</td>
                <td>
                    <spr:input path="bookName" cssClass="form-control" />
                </td>
            </tr>
            <tr>
                <td>Quantity:</td>
                <td>
                    <spr:input path="quantity" cssClass="form-control" />
                </td>
            </tr>
            <tr>
                <td>Price:</td>
                <td>
                    <spr:input path="price" cssClass="form-control" />
                </td>
            </tr>
            <tr>
                <td>Rack No:</td>
                <td>
                    <spr:input path="rackNo" cssClass="form-control" />
                </td>
            </tr>
            <tr>
                <td>UniqId:</td>
                <td>
                    <spr:input path="uniqId" cssClass="form-control" />
                </td>
            </tr>
            <tr>
                <td>
                    <a href="home.jsp" class="btn btn-secondary">Back</a>
                </td>
                <td>
                    <input type="submit" class="btn btn-primary" value="Add" />
                </td>
            </tr>
        </table>
    </spr:form>
</div>
<!-- Include Bootstrap JavaScript (optional) -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
