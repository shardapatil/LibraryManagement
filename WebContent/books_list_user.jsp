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
            <td>BOOK ID: <%=book.getBookId()%></td>
            <td>CATEGORY: <%=book.getCategory()%></td>
            <td>BOOK NAME: <%=book.getBookName()%></td>
            <td>RACK NO: <%=book.getRackNo()%></td>
            <td>QUANTITY: <%=book.getQuantity()%></td>
            <td>UNIQ ID: <%=book.getUniqId()%></td>
        </tr>
        <% } %>
        <tr>
            <td>
                <a href="user_home.jsp" class="btn btn-info"><h1>Back</h1></a>
            </td>
        </tr>
    </table>
</div>
<!-- Include Bootstrap JavaScript (optional) -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
