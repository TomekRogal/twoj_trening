<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form"
           uri="http://www.springframework.org/tags/form" %>
<script type="text/javascript"  src='<c:url value="/scripts/delete.js"/>'></script>
<html>
<jsp:include page="/wid/head.jsp"/>
<body class="sb-nav-fixed">
<jsp:include page="/wid/menuup.jsp"/>
<div id="layoutSidenav">
  <jsp:include page="/wid/menuleft.jsp"/>
  <div id="layoutSidenav_content">
    <div class="card mb-4 ">
      <div class="ms-auto px-2 mt-5" >
        <a href="/plan/all" ><button type="button" class="btn btn-primary ">Lista planów</button></a>
      </div>
      <table class="table">
        <tbody>
        <tr>
          <th class="w-25"><h3>Nazwa planu:</h3></th>
          <td style="font-size: 1.5rem">${plan.name}</td>
        </tr>
        <tr>
          <th style="width: 150px"><h5>Data rozpoczęcia:</h5></th>
          <td>${plan.startDate}</td>
        </tr>
        <tr>
          <th style="width: 150px"><h5>Czas trwania - tygodnie:</h5></th>
          <td>${plan.weeks}</td>
        </tr>
        </tbody>
      </table>
      <div class="card">
        <div class="ms-auto px-2 mt-5" >
          <a href="/plan/training/add/${plan.id}" ><button type="button" class="btn btn-primary ">Dodaj trening</button></a>
        </div>
        <h2>Treningi:</h2>
      </div>
      <c:forEach begin="1" end="${plan.weeks}" var="num">
      <h3 class="mt-2 text-center">Tydzień ${num}</h3>
        <c:set var = "a" value = "0"/>
       <c:forEach items="${trainingsList}"  var="traininginfo">
         <c:if test="${num==traininginfo.getKey().week}">
      <table id="tabletraining" class="table mt-3">
               <thead>
               <tr>
                 <th class="table-dark text-center"><p class="mb-3">Dzień : ${traininginfo.getKey().dayName.name}</p></th>
                   <th class="table-dark text-center"><p class="mb-3">Trening: ${traininginfo.getKey().training.name}</p> </th>
                 <th class="table-dark text-center" colspan="3">Actions :
                   <a href="/plan/training/edit/${traininginfo.getKey().id}" ><button type="button" class="btn btn-warning">Edytuj trening</button></a>
                   <a href="/training/show/${traininginfo.getKey().training.id}" ><button type="button" class="btn btn-success">Szczegóły treningu</button></a>
                   <a href="/plan/training/delete/${traininginfo.getKey().id}" class="delete-link"><button type="button" class="btn btn-danger">Usuń z planu</button></a>
                 </th>
<%--                 <th class="table-dark"><a href="/training/exercise/add/${traininginfo.getKey().training.id}" ><button type="button" class="btn btn-primary ">Dodaj ćwiczenie</button></a> </th>--%>
               </tr>
               </thead>
               <tbody>
             <tr>
               <th>Ćwiczenie</th>
               <th>Serie</th>
               <th>Powtórzenia</th>
               <th>Ciężar</th>
<%--               <th>Actions</th>--%>
             </tr>

             <c:forEach items="${traininginfo.getValue()}" var="exercise">
             <tr>
               <td>${exercise.exercise.name}</td>
               <td>${exercise.sets}</td>
               <td>${exercise.reps}</td>
               <td>${exercise.weight}</td>
<%--               <td>--%>
<%--                 <a href="/exercise/edit/${exercise.exercise.id}" ><button type="button" class="btn btn-warning">Edytuj ćwiczenie</button></a>--%>
<%--                 <a href="/exercise/show/${exercise.exercise.id}" ><button type="button" class="btn btn-success">Szczegóły ćwiczenia</button></a>--%>
<%--                 <a href="/training/exercise/delete/${exercise.id}" class="delete-link"><button type="button" class="btn btn-danger">Usuń z treningu</button></a>--%>
<%--               </td>--%>
             </tr>
             </c:forEach>
           </tbody>
           </table>
               <c:set var = "a" value = "1"/>
             </c:if>
            </c:forEach>
             <c:if test="${a==0}">
               <h4 style="color: red">Brak treningów<h4>
             </c:if>
           </c:forEach>

    </div>
    <jsp:include page="/wid/footer.jsp"/>
  </div>
</div>
<jsp:include page="/wid/scripts.jsp"/>
</body>
</html>

