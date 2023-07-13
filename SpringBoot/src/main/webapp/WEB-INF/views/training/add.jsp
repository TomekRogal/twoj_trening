<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form"
           uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Dodaj Trening</h1>
<form:form method="post"
           modelAttribute="training">
    <form:hidden path="id"/>
    Nazwa: <form:input path="name" /> <br>
    <form:errors  path="name"/><br>
    <input type="submit" value="Save">
    Opis: <form:textarea rows="5" path="description"/>
    <form:errors path="description"/><br>
</form:form>

</body>
</html>
