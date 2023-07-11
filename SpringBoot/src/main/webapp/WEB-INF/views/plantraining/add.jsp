<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form"
           uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
  <title>Title</title>
</head>
<body>
<h1>Dodaj trening do planu ${plan.name}</h1>
<form:form method="post"
           modelAttribute="planTraining" action="/plan/training/add">
  <form:hidden path="id"/>
  <form:hidden path="plan"/>
<%--  Plan: <form:select itemLabel="name" itemValue="id" path="plan" items="${plans}"/><br>--%>
<%--  <form:errors  path="plan"/><br>--%>
  Trening: <form:select itemLabel="name" itemValue="id" path="training" items="${trainings}"/><br>
  <form:errors  path="training"/><br>
  Dzień tygodnia: <form:select itemLabel="name" itemValue="id" path="dayName" items="${days}"/><br>
  <form:errors  path="dayName"/><br>
  Numer treningu: <form:input type="number" path="displayOrder" /> <br>
  <form:errors  path="displayOrder"/><br>
  <input type="submit" value="Save">
</form:form>
</body>
</html>
