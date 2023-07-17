<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<jsp:include page="/wid/head.jsp"/>
<head>
</head>
<body>
<div id="layoutError">
  <div id="layoutError_content">
    <main>
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-lg-6">
            <div class="text-center mt-4">
              <h1 class="display-1">Upss....</h1>
              <p class="lead">Coś poszło nie tak</p>
              <a href="/">
                <i class="fas fa-arrow-left me-1"></i>
                Wróć do strony głównej
              </a>
            </div>
          </div>
        </div>
      </div>
    </main>
  </div>
  <div id="layoutError_footer">
    <jsp:include page="/wid/footer.jsp"/>
  </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script src="/js/scripts.js"></script>
</body>
</html>
