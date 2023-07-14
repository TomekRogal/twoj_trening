<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">

<body class="sb-nav-fixed">
<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
  <!-- Navbar Brand-->
  <a class="navbar-brand ps-3" href="/">TWÓJ TRENING</a>
  <!-- Sidebar Toggle-->
  <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
  <!-- Navbar Search-->
  <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
    <div class="input-group">
      <a class="nav-link" href="/login">
        <button type="button" class="btn btn-secondary btn-lg">Logowanie</button>
      </a>
    </div>
  </form>
  <div class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
    <a class="nav-link" href="/register">
      <button type="button" class="btn btn-secondary btn-lg">Rejestracja</button>
    </a>
  </div>
</nav>
<div id="layoutSidenav">
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

          <a class="nav-link collapsed" href="" data-bs-toggle="collapse" data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
            <div class="sb-nav-link-icon"><i class="fas fa-scroll"></i></div>
            PLANY
            <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
          </a>
          <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
            <nav class="sb-sidenav-menu-nested nav">
              <a class="nav-link" href="/plan/all">Twoje Plany</a>
              <a class="nav-link" href="/plan/add">Dodaj nowy</a>
            </nav>
          </div>
          <a class="nav-link collapsed" href="" data-bs-toggle="collapse" data-bs-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages">
            <div class="sb-nav-link-icon"><i class="fas fa-calendar-alt"></i></div>
            TRENINGI
            <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
          </a>
          <div class="collapse" id="collapsePages" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
            <nav class="sb-sidenav-menu-nested nav">
              <a class="nav-link" href="/training/all">Twoje Treningi</a>
              <a class="nav-link" href="/training/add">Dodaj nowy</a>
            </nav>
          </div>
        </div>
      </div>
    </nav>
  </div>