<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<meta charset="UTF-8">
<title>Todos</title>
</head>
<body>
<%@include file="common/header.html" %>
<%@include file="common/nav.html" %>
<center><h2>Welcome Admin You can see all todos here.</h2></center>

<table border="2" height="40%" width="60%" align="center">
<tr><th>S.no</th><th>Description</th> <th>Target Date</th><th>Option</th></tr>
<c:forEach var="todo" items="${obj}">  

<tr><td>${todo.id }</td><td> ${todo.descr } </td><td>${todo.tdate }</td>
<td><a href="edittodo?id=${todo.id }">Edit</a>/<a href="deletetodo?sno=${todo.id }">
Delete</a></td>
</c:forEach>
</table>
<br/> <br/><br/><br/><br/>
<%@include file="common/footer.html" %>
</body>
</html>