<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <h1>Cast List</h1>
  <table class="table">
    <thead>
    <tr>
      <th scope="col">Name</th>
      <th scope="col">Date of birth</th>
      <th scope="col">Address</th>
      <th scope="col">Image</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="customer" items="${customerListFromServlet}">
    <tr>
      <td><c:out value="${customer.name}"/></td>
      <td><c:out value="${customer.dateOfBirth}"/></td>
      <td><c:out value="${customer.address}"/></td>
      <td><img src="${customer.img}" style="width: 100px; height: 100px"></td>
    </tr>
    </c:forEach>
  </table>

  </body>
</html>
