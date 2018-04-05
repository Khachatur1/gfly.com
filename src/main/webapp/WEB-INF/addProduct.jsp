<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
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
<spring:form action="/saveProduct" method="post" modelAttribute="product" enctype="multipart/form-data">
    <spring:label path="name">Name:</spring:label>
    <spring:input path="name"/><br>
    <spring:label path="wingspan">Wingspan:</spring:label>
    <spring:textarea path="wingspan"/><br>
    <spring:label path="weight">Weight:</spring:label>
    <spring:textarea path="weight"/><br>
    <spring:select path="engine">
        <spring:option value="NON"></spring:option>
        <spring:option value="DVS"></spring:option>
        <spring:option value="ELECTRO"></spring:option>
    </spring:select><br>
    <spring:select path="material">
        <spring:option value="DEPRON"></spring:option>
        <spring:option value="BALSA"></spring:option>
    </spring:select><br>
    <spring:select path="category" items="${category}" itemLabel="name"></spring:select><br>
    <label for="image">Image:</label>
    <input type="file" id="image" name="image"/><br>
    <spring:label path="description">Description:</spring:label>
    <spring:textarea path="description"/><br>
    <input type="submit" value="ADD">
</spring:form>
</body>
</html>
