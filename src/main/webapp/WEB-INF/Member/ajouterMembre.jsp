<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ajouter un Membre</title>
</head>
<body>
<h2>Ajouter un Membre</h2>
<form action="membres?action=ajouter" method="post">
    <label>Nom :</label>
    <input type="text" name="nom" required><br>

    <label>Date de naissance (yyyy-MM-dd) :</label>
    <input type="date" name="naissance" required><br>

    <label>Sport Pratiqué :</label>
    <input type="text" name="sportpratique" required><br>

    <input type="submit" value="Ajouter">
</form>
<br>
<a href="membres?action=afficher">Retour à la liste des membres</a>
</body>
</html>
