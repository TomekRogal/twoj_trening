<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form"
           uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Dodaj plan</h1>
<form:form method="post"
           modelAttribute="plan">
    <form:hidden path="id"/>
    Nazwa: <form:input path="name" /> <br>
    <form:errors  path="name"/><br>
    Początek: <form:input type="date" path="startDate" /> <br>
    <form:errors  path="startDate"/><br>
    Koniec: <form:input type="date" path="endDate" /> <br>
    <form:errors  path="endDate"/><br>
    <input type="submit" value="Save">
</form:form>
</body>
</html>
