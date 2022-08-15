<%--
  Created by IntelliJ IDEA.
  User: HOME
  Date: 8/15/2022
  Time: 10:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn"
           uri = "http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach var="cm" items="${list-comment}">
    <p>${cm.name}</p>
    <p>${cm.desc}</p>
</c:forEach>
</body>
</html>
