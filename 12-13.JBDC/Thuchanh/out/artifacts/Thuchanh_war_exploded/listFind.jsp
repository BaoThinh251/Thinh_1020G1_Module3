<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>User Management</h1>
<h2>
    <a href="users?action=users">List All Users</a>
</h2>
<table border="1" cellpadding="5">
    <c:forEach var="user" items="${listFind}">
        <tr>
            <td><c:out value="${user.id}"/></td>
            <td><c:out value="${user.name}"/></td>
            <td><c:out value="${user.email}"/></td>
            <td><c:out value="${user.country}"/></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
