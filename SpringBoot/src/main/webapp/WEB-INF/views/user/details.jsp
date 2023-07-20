<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form"
           uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<html>
<jsp:include page="/wid/head.jsp"/>
<body class="bg-primary">
<div id="layoutAuthentication">
    <div id="layoutAuthentication_content">
        <main>
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-5">
                        <div class="card shadow-lg border-0 rounded-lg mt-5">
                            <div class="card-header"><h3 class="text-center font-weight-light my-4">
                                Użytkownik: ${loggedUser.username}</h3></div>
                            <div class="card-body">
                                <div class="text-center">
                                    Akcje:
                                </div>
                                <div class="d-flex align-items-center justify-content-between mt-4 mb-4">
                                    <a class="mx-auto" href="/user/edit">
                                        <button type="button" class="btn btn-primary ">Zmień nazwę</button>
                                    </a>
                                </div>
                                <div class="d-flex align-items-center justify-content-between mt-4 mb-4">
                                    <a class="mx-auto" href="/user/password">
                                        <button type="button" class="btn btn-primary ">Zmień hasło</button>
                                    </a>
                                </div>
                                <div class="d-flex align-items-center justify-content-between mt-4 mb-4">
                                    <a class="mx-auto" href="/user/inactivate">
                                        <button type="button" class="btn btn-warning ">Dezaktywuj konto</button>
                                    </a>
                                </div>
                            </div>
                            <div class="card-footer text-center py-3">
                                <div class="small"><a href="/">Strona główna</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>
    <div id="layoutAuthentication_footer">
        <jsp:include page="/wid/footer.jsp"/>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        crossorigin="anonymous"></script>
<script src="/js/scripts.js"></script>
</body>
</html>

