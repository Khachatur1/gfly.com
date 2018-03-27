<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: karo
  Date: 25.03.18
  Time: 18:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Category</title>
</head>
<body>
<spring:form action="/saveCategory" method="post" modelAttribute="category" enctype="multipart/form-data">
    <spring:label path="name">Name:</spring:label>
    <spring:input path="name"/><br>
    <label for="image">Image:</label>
    <input type="file" id="image" name="image"/><br>
    <input type="submit" value="ADD">
</spring:form>
</body>
</html>
