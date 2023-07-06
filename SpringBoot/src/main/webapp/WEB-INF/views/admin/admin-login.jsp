<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form"
           uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<form method="post">
<div><label> User Name : <input type="text" name="username"/> </label></div>
<div><label> Password: <input type="password" name="password"/> </label></div>
<div><input type="submit" value="Sign In"/></div>
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
</form>
</body>
</html>
