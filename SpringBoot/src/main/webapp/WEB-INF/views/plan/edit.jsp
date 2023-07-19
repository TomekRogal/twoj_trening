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
      <a href="/plan/all" ><button type="button" class="btn btn-primary ">Lista planów</button></a>
    </div>
    <h1 class="mt-5 d-flex justify-content-center">Edytuj plan:</h1>
    <div class="container mt-5">
      <div class="row justify-content-center">
        <div class="col-lg-5">
          <div class="card shadow-lg border-0 rounded-lg mt-5">
            <form:form method="post"
                       modelAttribute="plan">
              <form:hidden path="id"/>
              <form:hidden path="user"/>
              Nazwa: <form:input cssClass="form-control" path="name" placeholder="Nazwa planu"/>
              <form:errors cssStyle="color: red" path="name"/><br>
              Początek: <form:input cssClass="form-control" type="date"  path="startDate" />
              <form:errors cssStyle="color: red" path="startDate"/><br>
              Czas trwania - tygodnie: <form:input cssClass="form-control" type="number" path="weeks" />
              <form:errors cssStyle="color: red" path="weeks"/><br>
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
