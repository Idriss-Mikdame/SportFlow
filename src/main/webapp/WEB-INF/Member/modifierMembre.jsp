<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.edumanage.demo7.model.Membre" %>

<%
    Membre membre = (Membre) request.getAttribute("membreById");
%>

<html>
<head>
    <title>Modifier un Membre</title>
</head>
<body>
<h2>Modifier un Membre</h2>
<form action="membres?action=modifier" method="post">
    <input type="hidden" name="id" value="<%= membre.getId() %>">

    <label>Nom :</label>
    <input type="text" name="nom" value="<%= membre.getNom() %>" required><br>

    <label>Date de naissance (yyyy-MM-dd HH:mm:ss) :</label>
    <input type="date" name="naissance"
           value="<%= membre.getNaissance().toString().replace(' ', 'T') %>" required><br>

    <label>Sport Pratiqué :</label>
    <input type="text" name="sportpratique" value="<%= membre.getSportPratique() %>" required><br>

    <input type="submit" value="Modifier">
</form>
<br>
<a href="membres?action=afficher">Retour à la liste des membres</a>
</body>
</html>
