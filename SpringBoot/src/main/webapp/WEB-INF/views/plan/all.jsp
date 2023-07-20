<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<script type="text/javascript" src='<c:url value="/js/delete.js"/>'></script>
<html>
<jsp:include page="/wid/head.jsp"/>
<body class="sb-nav-fixed">
<jsp:include page="/wid/menuup.jsp"/>
<div id="layoutSidenav">
    <jsp:include page="/wid/menuleft.jsp"/>
    <div id="layoutSidenav_content">
        <div class="card mb-4">
            <div class="ms-auto px-2 mt-5">
                <a href="/plan/add">
                    <button type="button" class="btn btn-primary ">Dodaj plan</button>
                </a>
            </div>
            <div class="card-header">
                <i class="fas fa-table me-1"></i>
                <h2>Twoje plany:</h2>
            </div>
            <div class="card-body">
                <table id="tableplans" class="table">
                    <thead>
                    <tr>
                        <th>Nazwa</th>
                        <th>Data rozpoczęcia</th>
                        <th>Czas trwania - tygodnie</th>
                        <th>Akcje</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${plans}" var="plan">
                        <tr>
                            <td>${plan.name}</td>
                            <td>${plan.startDate}</td>
                            <td>${plan.weeks}</td>
                            <td>
                                <a href="/plan/edit/${plan.id}">
                                    <button type="button" class="btn btn-warning">Edytuj</button>
                                </a>
                                <a href="/plan/show/${plan.id}">
                                    <button type="button" class="btn btn-success">Szczegóły</button>
                                </a>
                                <a href="/plan/delete/${plan.id}" class="delete-link">
                                    <button type="button" class="btn btn-danger">Usuń</button>
                                </a>

                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
        <jsp:include page="/wid/footer.jsp"/>
    </div>
</div>
<jsp:include page="/wid/scripts.jsp"/>
</body>
</html>

