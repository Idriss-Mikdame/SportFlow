<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.edumanage.demo7.model.Membre" %>

<%
    List<Membre> membreList = (List<Membre>) request.getAttribute("membreList");
%>

<html>
<head>
    <title>Liste des Membres</title>
</head>
<body>
<h2>Liste des Membres</h2>
<a href="membres?action=new">Ajouter un Nouveau Membre</a>
<br><br>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Nom</th>
        <th>Date de Naissance</th>
        <th>Sport Pratiqué</th>
        <th>Actions</th>
    </tr>
    <% for (Membre membre : membreList) { %>
    <tr>
        <td><%= membre.getId() %></td>
        <td><%= membre.getNom() %></td>
        <td><%= membre.getNaissance() %></td>
        <td><%= membre.getSportPratique() %></td>
        <td>
            <a href="membres?action=afficherbyID&id=<%= membre.getId() %>">Modifier</a>
            |
            <a href="membres?action=supprimer&id=<%= membre.getId() %>" onclick="return confirm('Voulez-vous vraiment supprimer ce membre ?');">Supprimer</a>
        </td>
    </tr>
    <% } %>
</table>
</body>
</html>
