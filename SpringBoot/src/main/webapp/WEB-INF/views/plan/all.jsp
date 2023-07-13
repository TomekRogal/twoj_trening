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
<h1>Plan list:</h1>
<a href="/plan/add" >Add Plan</a>
<table>
    <thead>
    <tr>
        <td>Nazwa</td>
        <td>Początek</td>
        <td>Długość tygodnie</td>
        <td>Actions</td>

    </tr>
    </thead>
    <tbody>
    <c:forEach items="${plans}" var="plan">
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
    </c:forEach>
    </tbody>
</table>
</body>
</html>
