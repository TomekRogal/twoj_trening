<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
  <title>Title</title>
  <style>
    table {
      width: 100%;
      border: 2px solid #888;
    }
    table td,
    table th {
      border: 1px solid #aaa;
      padding: 5px;
    }
  </style>
</head>
<body>
<h1>Szczegóły planu:</h1>
<a href="/plan/add" >Add Plan</a>
<table>
  <thead>
  <tr>
    <td>Nazwa</td>
    <td>Początek</td>
    <td>Koniec</td>
    <td>Actions</td>
  </tr>
  </thead>
  <tbody>
    <tr>
      <td>${plan.name}</td>
      <td>${plan.startDate}</td>
      <td>${plan.endDate}</td>
      <td>
        <a href="/plan/edit/${plan.id}" >Edit</a>
        <a href="/plan/show/${plan.id}" >Show</a>
        <a href="/plan/delete/${plan.id}" onclick="return confirm('Czy na pewno chcesz usnąć')">Delete</a>
        <a href="/plan/training/add/${plan.id}" >Add training to plan</a>
      </td>
    </tr>
  </tbody>
</table>
<br>
<h1>TRENINGI:</h1>
<br>
<table>
  <thead>
  <tr>
    <td>Dzień</td>
    <td>Trening</td>
    <td>Actions</td>
  </tr>
  </thead>
  <c:forEach items="${trainings}" var="training">
    <tr>
      <td>${training.dayName.name}</td>
      <td>${training.training.name}</td>
      <td>
        <a href="/training/edit/${training.training.id}" >Edit</a>
        <a href="/training/show/${training.training.id}" >Show</a>
        <a href="/plan/training/delete/${training.id}" onclick="return confirm('Czy na pewno chcesz usnąć')">Delete</a>
      </td>
    </tr>
  </c:forEach>

</table>
</body>
</html>
