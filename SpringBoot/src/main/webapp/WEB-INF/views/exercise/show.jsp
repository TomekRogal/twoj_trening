<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script type="text/javascript"  src='<c:url value="/scripts/delete.js"/>'></script>
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
<h1>Szczegóły ćwiczenia:</h1>
<a href="/exercise/add" >Dodaj ćwiczenie</a>
<table>
  <thead>
  <tr>
    <th>Nazwa</th>
    <th>Opis</th>
    <th>Akcje</th>
  </tr>
  </thead>
  <tbody>
    <tr>
      <td>${exercise.name}</td>
      <td>${exercise.description}</td>
      <td>
        <a href="/exercise/edit/${exercise.id}" >Edit</a>
        <a href="/exercise/show/${exercise.id}" >Show</a>
        <a href="/exercise/delete/${exercise.id}" class="delete-link">delete</a>
      </td>
    </tr>

  </tbody>
</table>
</body>
</html>