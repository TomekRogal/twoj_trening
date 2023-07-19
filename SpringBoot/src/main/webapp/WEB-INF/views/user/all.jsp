<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<script type="text/javascript"  src='<c:url value="/js/delete.js"/>'></script>
<html>
<jsp:include page="/wid/head.jsp"/>
<body class="sb-nav-fixed">
<jsp:include page="/wid/menuup.jsp"/>
<div id="layoutSidenav">
    <jsp:include page="/wid/menuleft.jsp"/>
    <div id="layoutSidenav_content">
        <div class="card mb-4">
            </div>
            <div class="card-header">
                <i class="fas fa-table me-1"></i>
                <h2>Użytkownicy:</h2>
            </div>
            <div class="card-body">
                <table id="datatable" class="table">
                    <thead>
                    <tr>
                        <th>Nazwa użytkownika</th>
                        <th>Aktywny</th>
                        <th>Akcje</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${users}" var="user">
                        <tr>
                            <td>${user.username}</td>
                            <c:if test="${user.enabled == 1}">
                                <td>Tak</td>
                                <td>Brak</td>
<%--                                <td>--%>
<%--                                    <a href="/users/enabled/${user.id}" class="delete-link"><button type="button" class="btn btn-secondary">Ustaw nieaktywny</button></a>--%>
<%--                                </td>--%>
                            </c:if>
                            <c:if test="${user.enabled == 0}">
                                <td>Nie</td>
                                <td>
                                <a href="/users/delete/${user.id}" class="delete-link"><button type="button" class="btn btn-danger">Usuń użytkownika</button></a>
                                </td>
                            </c:if>

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
