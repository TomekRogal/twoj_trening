<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form"
           uri="http://www.springframework.org/tags/form" %>
<script type="text/javascript" src='<c:url value="/js/delete.js"/>'></script>
<html>
<jsp:include page="/wid/head.jsp"/>
<body class="sb-nav-fixed">
<jsp:include page="/wid/menuup.jsp"/>
<div id="layoutSidenav">
    <jsp:include page="/wid/menuleft.jsp"/>
    <div id="layoutSidenav_content">
        <div class="card mb-4 ">
            <div class="ms-auto px-2 mt-5">
                <a href="/training/all">
                    <button type="button" class="btn btn-primary ">Lista treningów</button>
                </a>
            </div>
            <table class="table">
                <tbody>
                <tr>
                    <th class="w-25"><h3>Nazwa treningu:</h3></th>
                    <td style="font-size: 1.5rem">${training.name}</td>
                </tr>
                <tr class="w-auto">
                    <th style="width: 150px"><h5>Opis:</h5></th>
                    <td>${training.description}</td>
                </tr>
                </tbody>
            </table>
            <div class="card">
                <div class="ms-auto px-2 mt-5">
                    <a href="/training/exercise/add/${training.id}">
                        <button type="button" class="btn btn-primary ">Dodaj ćwiczenie</button>
                    </a>
                </div>
                <h2>Ćwiczenia:</h2>
            </div>
            <table id="tabletraining" class="table mt-3">
                <thead>
                <tr>
                    <th>Nazwa</th>
                    <th>Serie</th>
                    <th>Powtórzenia</th>
                    <th>Ciężar</th>
                    <th>Actions</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${exercises}" var="exercise">
                    <tr>
                        <td>${exercise.exercise.name}</td>
                        <td>${exercise.sets}</td>
                        <td>${exercise.reps}</td>
                        <td>${exercise.weight} kg</td>
                        <td>
                            <a href="/training/exercise/edit/${exercise.id}">
                                <button type="button" class="btn btn-warning">Edytuj</button>
                            </a>
                            <a href="/exercise/show/${exercise.exercise.id}">
                                <button type="button" class="btn btn-success">Szczegóły ćwiczenia</button>
                            </a>
                            <a href="/training/exercise/delete/${exercise.id}" class="delete-link">
                                <button type="button" class="btn btn-danger">Usuń z treningu</button>
                            </a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
        <jsp:include page="/wid/footer.jsp"/>
    </div>
</div>
<jsp:include page="/wid/scripts.jsp"/>
</body>
</html>

