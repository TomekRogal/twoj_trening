<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form"
           uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
  <title>Title</title>
</head>
<body>
<h1>Edytuj plan</h1>
<form:form method="post"
           modelAttribute="plan">
  <form:hidden path="id"/>
  <form:hidden path="user"/>
  Nazwa: <form:input path="name" /> <br>
  <form:errors  path="name"/><br>
  Początek: <form:input type="date" path="startDate" /> <br>
  <form:errors  path="startDate"/><br>
  Długość - tygodnie: <form:input type="number" path="weeks" /> <br>
  <form:errors  path="weeks"/><br>
  <input type="submit" value="Save">
</form:form>
</body>
</html>
