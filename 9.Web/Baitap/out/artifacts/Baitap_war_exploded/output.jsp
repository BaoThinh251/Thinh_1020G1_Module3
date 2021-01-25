<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 25-Jan-21
  Time: 12:15 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2 style="color: violet">
    Total discount:
    <%=request.getAttribute("totalDiscount")%>
    <br>
    After discount:
    <%=request.getAttribute("priceAf")%>
</h2>
</body>
</html>
