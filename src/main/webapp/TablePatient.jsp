<%--
  Created by IntelliJ IDEA.
  User: maxime
  Date: 31/05/18
  Time: 11:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Tableau des patients</title>
</head>
<body>
<h1>Liste des patients</h1>
<br>
<div>
    <c:choose>
        <c:when test="${!empty sessionScope.patients}">
            <table border="1" style="width: 100%">
                <tr>
                    <th>Civilité</th>
                    <th>Nom</th>
                    <th>Prénom</th>
                    <th>Urgent</th>
                    <th>Heure de mise en attente</th>
                </tr>
                <c:forEach items="${sessionScope.patients}" var="patient">
                    <tr>
                        <td><c:out value="${patient.civility}"/></td>
                        <td><c:out value="${patient.firstname}"/></td>
                        <td><c:out value="${patient.lastname}"/></td>
                        <td><c:out value="${patient.urgent}"/></td>
                        <td><fmt:formatDate type = "both" dateStyle = "short" timeStyle = "short" value = "${patient.date}"/></td>
                    </tr>
                </c:forEach>
            </table>
        </c:when>
        <c:otherwise>
            Aucun patient en attente.
        </c:otherwise>
    </c:choose>
    <br>
    <br>
    <a href="<c:url value="/formulaire"/>"><button>+Ajouter</button></a>
</div>

</body>
</html>
