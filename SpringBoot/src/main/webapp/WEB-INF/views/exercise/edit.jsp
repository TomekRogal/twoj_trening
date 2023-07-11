<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form"
           uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Edit Exercise</h1>
<form:form method="post"
           modelAttribute="exercise">
    <form:hidden path="id"/>
    Name: <form:input path="name" /> <br>
    <form:errors  path="name"/><br>
    <input type="submit" value="Save">
</form:form>
</body>
</html>