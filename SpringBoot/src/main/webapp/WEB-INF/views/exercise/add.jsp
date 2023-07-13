<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form"
           uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Dodaj ćwiczenie</h1>
<form:form method="post"
           modelAttribute="exercise">
    <form:hidden path="id"/>
    Name: <form:input path="name" /> <br>
    <form:errors path="name"/><br>
    Opis: <form:textarea rows="5" path="description"/>
    <form:errors path="description"/><br>
    <input type="submit" value="Dodaj">
</form:form>
</body>
</html>
