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
<h1>Trainings list:</h1>
<a href="/training/add" >Add Training</a>
<table>
    <thead>
    <tr>
        <th>Nazwa</th>
        <th>Opis</th>
        <th>Actions</th>

    </tr>
    </thead>
    <tbody>
    <c:forEach items="${trainings}" var="training">
        <tr>
            <td>${training.name}</td>
            <td>${training.description}</td>
            <td>
                <a href="/training/edit/${training.id}" >Edit</a>
                <a href="/training/show/${training.id}" >Show</a>
                <a href="/training/delete/${training.id}" class="delete-link">delete</a>
                <a href="/training/exercise/add/${training.id}" >Dodaj ćwiczenie</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<div>
    <c:if test='${delete.equals("failed")}'>
        <p  style="color:red" > Nie można usunąć treningu</p>
    </c:if>
</div>
</body>
</html>
