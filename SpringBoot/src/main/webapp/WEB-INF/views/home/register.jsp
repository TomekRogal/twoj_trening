<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form"
           uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Nowy użytkownik</h1>
<form:form method="post"
           modelAttribute="user">
    <form:hidden path="id"/>
    Nazwa użytkownika: <form:input path="username" /> <br>
    <form:errors  path="username"/><br>
    Hasło: <form:input type="password" path="password" /> <br>
    <form:errors  path="password"/><br>
    <input type="submit" value="Save">
</form:form>
</body>
</html>
