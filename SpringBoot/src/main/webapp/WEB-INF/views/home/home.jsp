<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<script type="text/javascript" src='<c:url value="/js/delete.js"/>'></script>
<html>
<jsp:include page="/wid/head.jsp"/>
<body class="sb-nav-fixed">
<jsp:include page="/wid/menuup.jsp"/>
<div id="layoutSidenav">
    <jsp:include page="/wid/menuleft.jsp"/>
    <div id="layoutSidenav_content">
        <main>
            <div class="container text-center">
                <div class="row">
                    <div class="col">
                        <img class="mb-4 img-error h-75 mt-4" src="assets/img/weightlifter-3944725_1280.png"/>
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
                        <img class="mb-4 img-error" src="assets/img/woman-4183803_640.png"/>
                    </div>
                </div>
            </div>
        </main>
        <jsp:include page="/wid/footer.jsp"/>
    </div>
</div>
<jsp:include page="/wid/scripts.jsp"/>
</body>
</html>