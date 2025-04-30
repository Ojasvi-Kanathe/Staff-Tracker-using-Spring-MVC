<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #ffffff;
        padding: 40px;
    }

    h1 {
        color: #333;
        text-align: center;
    }

    table {
        width: 90%;
        margin: 20px auto;
        border-collapse: collapse;
        box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }

    th, td {
        padding: 12px 15px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }

    th {
        background-color: #007bff;
        color: white;
    }
  tr:hover {
        background-color: #f1f1f1;
    }

    a {
        color: #007bff;
        text-decoration: none;
    }

    a:hover {
        text-decoration: underline;
    }

    .add-button {
        display: block;
        width: fit-content;
        margin: 20px auto;
        padding: 10px 20px;
        background-color: #28a745;
        color: white;
        text-decoration: none;
        border-radius: 4px;
    }

    .add-button:hover {
        background-color: #218838;
    }
</style>
</head>
<body>
<h1>employees list</h1>
<table border="2" width="70%" cellpadding="2">
<tr><th>id</th><th>Name</th><th>Salary</th><th>Designation</th><th>Edit</th><th>Delete</th></tr>
<c:forEach var="emp" items="${list}">
<tr>
<td>${emp.id }</td>
<td>${emp.name }</td>
<td>${emp.salary}</td>
<td>${emp.designation }</td>
<td><a href="editempform/${emp.id }">Edit</a></td>
<td><a href="deleteemp/${emp.id }">Delete</a></td>
</tr>
</c:forEach>
</table>
<br>
<a href="empform">add emp</a>
</body>
</html>