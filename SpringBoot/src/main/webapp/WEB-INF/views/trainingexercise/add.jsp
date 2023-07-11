<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form"
           uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
  <title>Title</title>
</head>
<body>
<h1>Dodaj ćwiczenie do treningu </h1>
<form:form method="post"
           modelAttribute="trainingExercise" action="/training/exercise/add">
  <form:hidden path="id"/>
  <form:hidden path="training"/>
  <%--  Plan: <form:select itemLabel="name" itemValue="id" path="plan" items="${plans}"/><br>--%>
  <%--  <form:errors  path="plan"/><br>--%>
  Ćwiczenie: <form:select itemLabel="name" itemValue="id" path="exercise" items="${exercises}"/><br>
  <form:errors  path="training"/><br>
  Serie: <form:input type="number" path="sets" /> <br>
  <form:errors  path="sets"/><br>
  Powtórzenia: <form:input type="number" path="reps" /> <br>
  <form:errors  path="reps"/><br>
  Ciężar: <form:input type="number" path="weight" /> <br>
  <form:errors  path="weight"/><br>
  <input type="submit" value="Save">
</form:form>
</body>
</html>