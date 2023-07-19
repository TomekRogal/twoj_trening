<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form"
           uri="http://www.springframework.org/tags/form" %>
<script type="text/javascript"  src='<c:url value="/js/delete.js"/>'></script>
<html>
<jsp:include page="/wid/head.jsp"/>
<body class="sb-nav-fixed">
<jsp:include page="/wid/menuup.jsp"/>
<div id="layoutSidenav">
    <jsp:include page="/wid/menuleft.jsp"/>
    <div id="layoutSidenav_content">
        <div class="ms-auto px-2 mt-5" >
            <a href="/training/all" ><button type="button" class="btn btn-primary ">Lista treningów</button></a>
        </div>
        <h1 class="mt-5 d-flex justify-content-center">Edytuj trening:</h1>
        <div class="container mt-5">
            <div class="row justify-content-center">
                <div class="col-lg-5">
                    <div class="card shadow-lg border-0 rounded-lg mt-5">
                        <form:form method="post"
                                   modelAttribute="training">
                            <form:hidden path="id"/>
                            <form:hidden path="user"/>
                            Nazwa: <form:input cssClass="form-control" path="name" placeholder="Nazwa treningu"/>
                            <form:errors cssStyle="color: red" path="name"/><br>
                            Opis: <form:textarea cssClass="form-control" rows="5" path="description" placeholder="Krótki opis"/>
                            <form:errors cssStyle="color: red" path="description"/><br>
                            <input class="btn btn-primary" type="submit" value="Edytuj">
                        </form:form>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="/wid/footer.jsp"/>
    </div>
</div>
<jsp:include page="/wid/scripts.jsp"/>
</body>
</html>