<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<div id="layoutSidenav_nav">
  <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
    <div class="sb-sidenav-menu">
      <div class="nav">
        <div class="sb-sidenav-menu-heading">Strona główna</div>
        <a class="nav-link" href="/">
          <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
          Twój Trening
        </a>
        <div class="sb-sidenav-menu-heading">Zadania</div>

        <a class="nav-link" href="/exercise/all">
          <div class="sb-nav-link-icon"><i class="fas fa-running"></i></div>
          ĆWICZENIA
        </a>
<sec:authorize access="isAuthenticated()">
        <a class="nav-link collapsed" href="" data-bs-toggle="collapse" data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
          <div class="sb-nav-link-icon"><i class="fas fa-scroll"></i></div>
          PLANY
          <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
        </a>
        <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
          <nav class="sb-sidenav-menu-nested nav">
            <a class="nav-link" href="/plan/all">Twoje plany</a>
            <a class="nav-link" href="/plan/add">Nowy plan</a>
          </nav>
        </div>
        <a class="nav-link collapsed" href="" data-bs-toggle="collapse" data-bs-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages">
          <div class="sb-nav-link-icon"><i class="fas fa-calendar-alt"></i></div>
          TRENINGI
          <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
        </a>
        <div class="collapse" id="collapsePages" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
          <nav class="sb-sidenav-menu-nested nav">
            <a class="nav-link" href="/training/all">Twoje treningi</a>
            <a class="nav-link" href="/training/add">Nowy trening</a>
          </nav>
        </div>
</sec:authorize>
      </div>
    </div>
  </nav>
</div>
