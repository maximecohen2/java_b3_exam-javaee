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
<h1>Ajouter un patient</h1>
<br>
<form action="" method="post">
    <div>
        <label for="civility">Civilité :</label>
        <select id="civility" name="user_civility">
            <option value="M">M.</option>
            <option value="W">Mme</option>
        </select>
        <p></p>
    </div>
    <br>
    <div>
        <label for="firstname">Prénom :</label>
        <input type="text" id="firstname" name="user_firstname">
        <p></p>
    </div>
    <br>
    <div>
        <label for="lastname">Nom :</label>
        <input type="text" id="lastname" name="user_lastname">
        <p></p>
    </div>
    <br>
    <div>
        <input type="checkbox" id="urgent" name="user_urgent" value="true">
        <label for="urgent">Urgent</label>
        <p>
        </p>
    </div>
    <br>
    <input type="submit" value="Envoyer">
</form>
<br>
<a href="<c:url value="/"/>"><button>Retour</button></a>
</body>
</html>