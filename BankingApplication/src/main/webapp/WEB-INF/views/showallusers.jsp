<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Hcl bookstore app</title>
<style type="text/css">
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>

</head>
<body>
<table>
    <thead>
        <tr>
            <th>UserId</th>
            <th>UserName</th>
            <th>role</th> 
            <th>address</th>
            <th>phone</th>
            <th>email</th>
            <th>update</th>
            <th>delete</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${users}" var="user">
            <tr>
                <td>${user.uId}</td>
                <td>${user.username}</td>
                <td>${user.roles}</td>
                <td>${user.address}</td>
                <td>${user.phone}</td>
                <td>${user.email}</td>
                <td><a href="updateuser?id=${user.uId}">update User</a></td>
                <td><a href="deleteuser?id=${user.uId}">delete User</a></td>
            </tr>
        </c:forEach>
    </tbody>
</table>
<a href="home">home</a>
</body>
</html>