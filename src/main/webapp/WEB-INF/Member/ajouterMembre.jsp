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
<form action="/membres" method="post">

    <label >Nom : </label><br>
    <input type="text"  name="nom"><br>
    <label >Date naissance : </label><br>
    <input type="date"  name="date" ><br>
    <label>Sport pratique :</label><br>
    <input type="text" name="sport"><br><br>
    <input type="submit" value="Submit">

</form>
</body>
</html>
