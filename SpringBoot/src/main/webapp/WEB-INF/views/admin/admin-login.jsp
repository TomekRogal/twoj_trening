<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form"
           uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Login - Twój trening</title>
    <link href="/css/styles.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
</head>
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




<%--<div><label> User Name : <input type="text" name="username"/> </label></div>--%>
<%--<div><label> Password: <input type="password" name="password"/> </label></div>--%>
<%--<div><input type="submit" value="Sign In"/></div>--%>
<%--<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>--%>
<%--</form>--%>

