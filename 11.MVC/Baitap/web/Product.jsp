<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 27-Jan-21
  Time: 2:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<table class="table table-dark">
    <thead>
    <tr>
        <th scope="col">ID</th>
        <th scope="col">Name</th>
        <th scope="col">Price</th>
    </tr>
    </thead>
    <tbody>
    <c: forEach var="product" item="&{productMap}"></c:>
    </tbody>
</table>
</body>
</html>
