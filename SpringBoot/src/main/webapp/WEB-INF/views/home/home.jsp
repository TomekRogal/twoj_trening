<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Twój Trening</title>
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
    <link href="css/styles.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
</head>
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


    <div id="layoutSidenav_content">



        <main>
            <div class="container text-center">
                <div class="row">
                    <div class="col">
                        <img class="mb-4 img-error h-75 mt-4" src="assets/img/weightlifter-3944725_1280.png" />
                    </div>
                    <div class="col">
                       <h1 class="align-middle mt-5">Rozpocznij z nami swoją przygodę i zadbaj o swoje zdrowie</h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h1 class="align-middle"> Zaplanuj swoje treningi</h1>
                    </div>
                    <div class="col">
                        <img class="mb-4 img-error" src="assets/img/woman-4183803_640.png" />
                    </div>
                </div>
            </div>



        </main>
        <footer class="py-4 bg-light mt-auto">
            <div class="container-fluid px-4">
                <div class="d-flex align-items-center justify-content-between small">
                    <div class="text-muted">Copyright &copy; Tomasz Rogalski</div>
                </div>
            </div>
        </footer>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script src="js/scripts.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
<script src="assets/demo/chart-area-demo.js"></script>
<script src="assets/demo/chart-bar-demo.js"></script>
<script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js" crossorigin="anonymous"></script>
<script src="js/datatables-simple-demo.js"></script>
</body>
</html>