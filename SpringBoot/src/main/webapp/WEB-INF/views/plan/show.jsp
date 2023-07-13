<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script type="text/javascript"  src='<c:url value="/scripts/delete.js"/>'></script>
<html>
<head>
  <title>Title</title>
  <style>
    table {
      /*width: 100%;*/
      border: 2px solid #888;
    }
    table thead{
      background-color: #d0c229;
    }
    table tbody {
      background-color: #3f8a59;
    }
    table td,
    table th {
      width: 300px;
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
    <td>Długość - tygodnie</td>
    <td>Actions</td>
  </tr>
  </thead>
  <tbody>
    <tr>
      <td>${plan.name}</td>
      <td>${plan.startDate}</td>
      <td>${plan.weeks}</td>
      <td>
        <a href="/plan/edit/${plan.id}" >Edit</a>
        <a href="/plan/show/${plan.id}" >Show</a>
        <a href="/plan/delete/${plan.id}" class="delete-link">delete</a>
        <a href="/plan/training/add/${plan.id}" >Add training to plan</a>
      </td>
    </tr>
  </tbody>
</table>
<br>
<h1>TRENINGI:</h1>
<br>
<c:forEach begin="1" end="${plan.weeks}" var="num">
  <h1>Tydzień ${num}</h1>
  <c:set var = "a" value = "0"/>
 <c:forEach items="${trainingsList}" var="traininginfo">
  <c:if test="${num==traininginfo.getKey().week}">
  <table>
    <thead>
    <tr>
      <th>Dzień : ${traininginfo.getKey().dayName.name}</th>
      <th>Trening : ${traininginfo.getKey().training.name} </th>
      <th colspan="3">Actions :
        <a href="/training/edit/${traininginfo.getKey().training.id}" >Edit</a>
        <a href="/training/show/${traininginfo.getKey().training.id}" >Show</a>
        <a href="/plan/training/delete/${traininginfo.getKey().id}" class="delete-link">delete</a>
      </th>
    </tr>
    </thead>
    <tbody>
  <tr>
    <th>Ćwiczenie</th>
    <th>Serie</th>
    <th>Powtórzenia</th>
    <th>Ciężar</th>
    <th>Actions</th>
  </tr>

  <c:forEach items="${traininginfo.getValue()}" var="exercise">
  <tr>
    <td>${exercise.exercise.name}</td>
    <td>${exercise.sets}</td>
    <td>${exercise.reps}</td>
    <td>${exercise.weight}</td>
    <td>
      <a href="/exercise/edit/${exercise.exercise.id}" >Edit</a>
      <a href="/exercise/show/${exercise.exercise.id}" >Show</a>
      <a href="/training/exercise/delete/${exercise.id}" class="delete-link">delete</a>
    </td>
  </tr>
  </c:forEach>
</tbody>
</table>
    <c:set var = "a" value = "1"/>
  </c:if>
 </c:forEach>
  <c:if test="${a==0}">
    <h2>Brak treningów<h2>
  </c:if>
</c:forEach>
</body>
</html>
