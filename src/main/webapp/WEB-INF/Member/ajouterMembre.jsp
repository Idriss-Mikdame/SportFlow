<%--
  Created by IntelliJ IDEA.
  User: idriss
  Date: 11/03/2025
  Time: 11:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<body>
<h2>Ajouter un Membre</h2>
<form action="membres?action=ajouter" method="post">
    Nom: <input type="text" name="nom" required><br>
    Date de naissance: <input type="date" name="naissance" required><br>
    Sport pratiqué: <input type="text" name="sportpratique" required><br>
    <input type="submit" value="Ajouter">
</form>
</body>


</html>
