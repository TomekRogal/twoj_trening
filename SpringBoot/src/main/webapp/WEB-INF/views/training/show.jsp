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
<h1>Trainings ${training.name}</h1>
<a href="/training/add" >Add Training</a>
<table>
    <thead>
    <tr>
        <td>Name</td>
        <td>Actions</td>

    </tr>
    </thead>
    <tbody>

        <tr>
            <td>${training.name}</td>
<%--            <td>${training.sets}</td>--%>
<%--            <td>${training.reps}</td>--%>
<%--            <td>${training.weight}</td>--%>

            <td>
                <a href="/training/all" >All</a>
                <a href="/training/edit/${training.id}" >Edit</a>
                <a href="/training/delete/${training.id}" class="delete-link">delete</a>
                <a href="/training/exercise/add/${training.id}" >Dodaj ćwiczenie</a>
            </td>
        </tr>
    </tbody>
</table>
<br>
<h1>ĆWICZENIA:</h1>
<br>
<table>
    <thead>
    <tr>
        <td>Nazwa</td>
        <td>Serie</td>
        <td>Powtórzenia</td>
        <td>Ciężar</td>
        <td>Actions</td>
    </tr>
    </thead>
    <c:forEach items="${exercises}" var="exercise">
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

</table>
</body>
</html>