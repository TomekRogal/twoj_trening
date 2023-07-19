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
      <a href="/plan/show/${planTraining.plan.id}" ><button type="button" class="btn btn-primary ">Powrót</button></a>
    </div>
    <h1 class="mt-5 d-flex justify-content-center">Dodaj trening do planu: ${planTraining.plan.name} </h1>
    <div class="container mt-5">
      <div class="row justify-content-center">
        <div class="col-lg-5">
          <div class="card shadow-lg border-0 rounded-lg mt-5">
            <form:form method="post"
                       modelAttribute="planTraining" action="/plan/training/add">
              <form:hidden path="id"/>
              <form:hidden path="plan"/>
                Trening: <form:select cssClass="form-control" itemLabel="name" itemValue="id" path="training" items="${trainings}"/><br>
                <form:errors cssStyle="color: red"  path="training"/><br>
                Dzień tygodnia: <form:select cssClass="form-control" itemLabel="name" itemValue="id" path="dayName" items="${days}"/><br>
              <form:errors cssStyle="color: red" path="dayName"/><br>
                Tydzień:
                <form:select cssClass="form-control" path="week">
                  <c:forEach begin="1" end="${planTraining.plan.weeks}" var="num">
                    <form:option type="number" value="${num}" /> <br>
                  </c:forEach>
                </form:select>
              <form:errors cssStyle="color: red" path="week"/><br>
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

