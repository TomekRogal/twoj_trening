<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
    <!-- Navbar Brand-->
    <a class="navbar-brand ps-3" href="/">TWÓJ TRENING</a>
    <!-- Sidebar Toggle-->
    <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
    <!-- Navbar Search-->
    <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
        <div class="input-group">
<sec:authorize access="isAnonymous()">
            <a class="nav-link" href="/login">
                <button type="button" class="btn btn-secondary btn-lg">Logowanie</button>
            </a>
</sec:authorize>
        </div>
    </form>
    <div class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
<sec:authorize access="isAnonymous()">
        <a class="nav-link" href="/register">
            <button type="button" class="btn btn-secondary btn-lg">Rejestracja</button>
        </a>
</sec:authorize>
    </div>
<sec:authorize access="isAuthenticated()">
    <div class="sb-sidenav-footer">
        <div class="small" style="color: white">Zalogowany:</div>
        <div style="color: white"><sec:authentication property="principal.username"/></div>
    </div>
    <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                <li><a class="dropdown-item" href="/user/details">Ustawienia</a></li>
                <li><hr class="dropdown-divider" /></li>
                <li>
                <form action="<c:url value="/logout"/>" method="post">
                    <input class="dropdown-item" type="submit" value="Wyloguj">
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                </form>
                </li>

            </ul>
        </li>
    </ul>
</sec:authorize>
</nav>
