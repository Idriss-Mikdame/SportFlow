<%--
  Created by IntelliJ IDEA.
  User: idriss
  Date: 11/03/2025
  Time: 11:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<body>
<h2>Modifier Membre</h2>
<form action="membres?action=modifier" method="post">
    <input type="hidden" name="id" value="${membre.id}">
    Nom: <input type="text" name="nom" value="${membre.nom}" required><br>
    Date de naissance: <input type="date" name="naissance" value="${membre.naissance}" required><br>
    Sport pratiqué: <input type="text" name="sportpratique" value="${membre.sportpratique}" required><br>
    <input type="submit" value="Modifier">
</form>
</body>

