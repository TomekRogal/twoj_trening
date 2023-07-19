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
    <div class="card mb-4 ">
      <div class="ms-auto px-2 mt-5" >

          <a href="/exercise/all" class="" ><button type="button" class="btn btn-primary ">Lista ćwiczeń</button></a>
      </div>
      <div class="card-header">
        <h1>Ćwiczenie: </h1> <h2 class="text-center mt-5"> ${exercise.name}</h2>
      </div>
    </div>
      <div class="card mb-4">
          <div class="card-header">
              <p class="text-center"><h3>Opis:</h3></p>
          </div>
          <div class="card-body text-center w-25 mx-auto">${exercise.description}</div>
      </div>
    <jsp:include page="/wid/footer.jsp"/>
  </div>
</div>
<jsp:include page="/wid/scripts.jsp"/>
</body>
</html>