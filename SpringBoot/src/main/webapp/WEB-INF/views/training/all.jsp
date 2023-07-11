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
<h1>Trainings list:</h1>
<a href="/training/add" >Add Training</a>
<table>
    <thead>
    <tr>
        <td>Name</td>
        <td>Sets</td>
        <td>Reps</td>
        <td>Weight</td>
        <td>Actions</td>

    </tr>
    </thead>
    <tbody>
    <c:forEach items="${trainings}" var="training">
        <tr>
            <td>${training.name}</td>
<%--            <td>${training.sets}</td>--%>
<%--            <td>${training.reps}</td>--%>
<%--            <td>${training.weight} kg</td>--%>

            <td>
                <a href="/training/edit/${training.id}" >Edit</a>
                <a href="/training/show/${training.id}" >Show</a>
                <a href="/training/delete/${training.id}" onclick="return confirm('Czy na pewno chcesz usnąć')">Delete</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
