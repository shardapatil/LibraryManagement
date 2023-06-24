<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>
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
        <spr:form action="reg1.htm" method="post" commandName="user">
            <table class="table table-bordered">
                <tr>
                    <td colspan="2" class="text-center bg-danger">
                        <h1>User Registration</h1>
                    </td>
                </tr>
                <tr>
                    <td>First Name:</td>
                    <td>
                        <spr:input path="userFName" cssClass="form-control" />
                    </td>
                </tr>
                <tr>
                    <td>Last Name:</td>
                    <td>
                        <spr:input path="userLName" cssClass="form-control" />
                    </td>
                </tr>
                <tr>
                    <td>User Name:</td>
                    <td>
                        <spr:input path="userName" cssClass="form-control" />
                        <font color="red"><spr:errors path="userName"></spr:errors></font>
                    </td>
                </tr>
                <tr>
                    <td>User password:</td>
                    <td>
                        <spr:password path="userPass" cssClass="form-control" />
                        <font color="red"><spr:errors path="userPass"></spr:errors></font>
                    </td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td>
                        <spr:input path="email" cssClass="form-control" />
                    </td>
                </tr>
                <tr>
                    <td>Contact:</td>
                    <td>
                        <spr:input path="contactNo" cssClass="form-control" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="user.jsp" class="btn btn-secondary">Back</a>
                    </td>
                    <td>
                        <input type="submit" class="btn btn-primary" value="Register" />
                    </td>
                </tr>
            </table>
        </spr:form>
    </div>
    <!-- Include Bootstrap JavaScript (optional) -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
