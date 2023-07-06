<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form"
           uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Add Exercise</h1>
<form:form method="post"
           modelAttribute="exercise">
    <form:hidden path="id"/>
    Name: <form:input path="name" /> <br>
    <form:errors  path="name"/><br>
    Sets: <form:input path="sets" /> <br>
    <form:errors  path="sets"/><br>
    Reps: <form:input path="reps" /> <br>
    <form:errors  path="reps"/><br>
    Weight: <form:input path="weight" /> <br>
    <form:errors  path="weight"/><br>
    <input type="submit" value="Save">
</form:form>
</body>
</html>