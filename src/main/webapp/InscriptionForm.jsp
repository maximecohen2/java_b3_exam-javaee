<%--
  Created by IntelliJ IDEA.
  User: maxime
  Date: 31/05/18
  Time: 10:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>Formulaire</title>
</head>
<body>
<form action="" method="post">
    <div>
        <label for="email">Email :</label>
        <input type="email" id="email" name="user_email">
        <p>
        </p>
    </div>
    <br>
    <div>
        <label for="password">Password :</label>
        <input type="password" id="password" name="user_password">
        <p></p>
    </div>
    <br>
    <div>
        <label for="password_confirm">Password confirmation :</label>
        <input type="password" id="password_confirm" name="user_password_confirm">
        <p></p>
    </div>
    <br>
    <div>
        <input type="checkbox" id="agreement" name="user_agreement" value="true">
        <label for="agreement">J'ai lu et approuvé les conditions générales de ce site</label>
        <p>
        </p>
    </div>
    <input type="submit" value="Submit">
</form>

</body>
</html>