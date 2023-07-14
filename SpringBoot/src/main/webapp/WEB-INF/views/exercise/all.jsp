<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<script type="text/javascript"  src='<c:url value="/scripts/delete.js"/>'></script>
<html>
  <jsp:include page="/wid/head.jsp"/>
  <body class="sb-nav-fixed">
    <jsp:include page="/wid/menuup.jsp"/>
    <div id="layoutSidenav">
    <jsp:include page="/wid/menuleft.jsp"/>
        <div id="layoutSidenav_content">


            <div class="card mb-4">
                <div class="ms-auto px-2 mt-5">
                <a href="/exercise/add" ><button href="/exercise/add" type="button" class="btn btn-primary ">Dodaj ćwiczenie</button></a>
                </div>
                <div class="card-header">
                    <i class="fas fa-table me-1"></i>
                    <h2>Nasze ćwiczenia:</h2>
                </div>
                <div class="card-body">
          <table id="datatablesSimple" class="table-striped-columns">
    <thead>
    <tr>
        <th>Nazwa</th>
        <th>Opis</th>
        <th>Akcje</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${exercises}" var="exercise">
        <tr>
            <td>${exercise.name}</td>
            <td>${exercise.description}</td>
            <td>
                <a href="/exercise/edit/${exercise.id}" ><button type="button" class="btn btn-warning">Edytuj</button></a>
                <a href="/exercise/show/${exercise.id}" ><button type="button" class="btn btn-success">Szczegóły</button></a>
                <a href="/exercise/delete/${exercise.id}" class="delete-link"><button type="button" class="btn btn-danger">Usuń</button></a>
                <a href="/training/exercise/add" ><button type="button" class="btn btn-primary">Dodaj do treningu</button></a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
                </div>
                <c:if test='${delete.equals("failed")}'>
                    <p  style="color:red" > Nie można usunąć ćwiczenia</p>
                </c:if>
            </div>
        </div>
    </div>
<jsp:include page="/wid/scripts.jsp"/>
</body>
</html>
