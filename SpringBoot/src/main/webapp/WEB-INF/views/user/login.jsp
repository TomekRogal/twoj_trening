<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form"
           uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
                            <div class="card-header"><h3 class="text-center font-weight-light my-4">Logowanie</h3></div>
                            <div class="card-body">
                                <form method="post">
                                    <div class="form-floating mb-3">
                                        <input class="form-control" id="inputUser" type="text" name="username" placeholder="Nazwa użytkownika" />
                                        <label for="inputUser">Nazwa użytkownika</label>
                                    </div>

                                    <div class="form-floating mb-3">
                                        <input class="form-control" id="inputPassword" type="password" name="password" placeholder="Hasło" />
                                        <label for="inputPassword">Hasło</label>
                                    </div>
                                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                                    <c:if test="${param.error != null}">
                                        <div id="error">
                                            <p  style="color:red" > Nieprawidłowa nazwa użytkownika lub hasło</p>
                                        </div>
                                    </c:if>
                                    <div class="d-flex align-items-center justify-content-between mt-4 mb-0">
                                        <input class="btn btn-primary" type="submit" value="Zaloguj"/></div>


                                </form>
                            </div>
                            <div class="card-footer text-center py-3">
                                <div class="small"><a href="/register">Nie masz konta? Zarejestruj się!</a></div>
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
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script src="js/scripts.js"></script>
</body>
</html>

