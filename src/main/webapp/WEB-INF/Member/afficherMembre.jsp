<%--
  Created by IntelliJ IDEA.
  User: idriss
  Date: 11/03/2025
  Time: 11:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<body>
<h2>Liste des Membres</h2>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Nom</th>
        <th>Date de naissance</th>
        <th>Sport</th>
        <th>Actions</th>
    </tr>
    <c:forEach var="membre" items="${membreList}">
        <tr>
            <td>${membre.id}</td>
            <td>${membre.nom}</td>
            <td>${membre.naissance}</td>
            <td>${membre.sportpratique}</td>
            <td>
                <a href="membres?action=afficherbyID&id=${membre.id}">Modifier</a>
                <a href="membres?action=supprimer&id=${membre.id}" onclick="return confirm('Êtes-vous sûr ?')">Supprimer</a>
            </td>
        </tr>
    </c:forEach>
</table>
<br>
<a href="membres?action=new">Ajouter un Membre</a>
</body>
