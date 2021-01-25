<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 25-Jan-21
  Time: 12:06 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <h2>Product Discount Calculator</h2>
  <form method="post" action="/cal">
    <p>Description: </p>
    <input type="text" name="productDescription">
    <br>
    <p>Price: </p>
    <input type="text" name="price" placeholder="22000">
    <br>
    <p>Discount percent: </p>
    <input type="text" name="discount" placeholder="10">
    <input type="submit" name="cal" value="calculate">
  </form>
  </body>
</html>
