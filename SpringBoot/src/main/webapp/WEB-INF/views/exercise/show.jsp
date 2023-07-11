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
<h1>Exercises list:</h1>
<a href="/exercise/add" >Add Exercise</a>
<table>
  <thead>
  <tr>
    <td>Name</td>
    <td>Actions</td>
  </tr>
  </thead>
  <tbody>
    <tr>
      <td>${exercise.name}</td>

      <td>
        <a href="/exercise/edit/${exercise.id}" >Edit</a>
        <a href="/exercise/show/${exercise.id}" >Show</a>
        <a href="/exercise/delete/${exercise.id}" onclick="return confirm('Czy na pewno chcesz usnąć')">Delete</a>
      </td>
    </tr>

  </tbody>
</table>
</body>
</html>