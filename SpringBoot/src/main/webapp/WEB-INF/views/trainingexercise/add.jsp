<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form"
           uri="http://www.springframework.org/tags/form" %>
<script type="text/javascript" src='<c:url value="/js/delete.js"/>'></script>
<html>
<jsp:include page="/wid/head.jsp"/>
<body class="sb-nav-fixed">
<jsp:include page="/wid/menuup.jsp"/>
<div id="layoutSidenav">
    <jsp:include page="/wid/menuleft.jsp"/>
    <div id="layoutSidenav_content">
        <div class="ms-auto px-2 mt-5">
            <a href="/training/show/${trainingExercise.training.id}">
                <button type="button" class="btn btn-primary ">Powrót</button>
            </a>
        </div>
        <h1 class="mt-5 d-flex justify-content-center">Dodaj ćwiczenie do
            treningu: ${trainingExercise.training.name} </h1>
        <div class="container mt-5">
            <div class="row justify-content-center">
                <div class="col-lg-5">
                    <div class="card shadow-lg border-0 rounded-lg mt-5">
                        <form:form method="post"
                                   modelAttribute="trainingExercise" action="/training/exercise/add">
                            <form:hidden path="id"/>
                            <form:hidden path="training"/>
                            Ćwiczenie: <form:select cssClass="form-control" itemLabel="name" itemValue="id"
                                                    path="exercise" items="${exercises}"/>
                            <form:errors cssStyle="color: red" path="exercise"/><br>
                            Serie: <form:input cssClass="form-control" type="number" path="sets"/>
                            <form:errors cssStyle="color: red" path="sets"/><br>
                            Powtórzenia: <form:input cssClass="form-control" type="number" path="reps"/>
                            <form:errors cssStyle="color: red" path="reps"/><br>
                            Ciężar: <form:input cssClass="form-control" type="number" step="0.25" path="weight"/>
                            <form:errors cssStyle="color: red" path="weight"/><br>
                            <input class="btn btn-primary" type="submit" value="Dodaj">
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
