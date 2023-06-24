<%@page import="com.cdac.dto.Books"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Books List</title>
<!-- Include Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <table class="table table-bordered" align="center">
        <tr>
            <td>
                <h1 style="background: red">BOOKS LIST</h1>
            </td>
        </tr>
        <% 
        List<Books> elist = (List<Books>)request.getAttribute("bookList");
        for(Books book : elist){
        %>
        <tr>
            <td>Book Id: <%=book.getBookId()%></td>
            <td>Category: <%=book.getCategory()%></td>
            <td>Book Name: <%=book.getBookName()%></td>
            <td>Rack No: <%=book.getRackNo()%></td>
            <td>Quantity: <%=book.getQuantity()%></td>
            <td>UniqId: <%=book.getUniqId()%></td>
            <td>
                <a href="books_delete.htm?bookId=<%=book.getBookId()%>" class="btn btn-danger">Delete</a>
            </td>
            <td>
                <a href="book_update_form.htm?bookId=<%=book.getBookId()%>" class="btn btn-primary">Update</a>
            </td>
        </tr>
        <% } %>
        <tr>
            <td>
                <a href="home.jsp" class="btn btn-warning"><h3>Back</h3></a>
            </td>
        </tr>
    </table>
</div>
<!-- Include Bootstrap JavaScript (optional) -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
