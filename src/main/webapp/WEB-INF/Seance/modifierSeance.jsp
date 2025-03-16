<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <title>Modifier une séance</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .container {
            max-width: 600px;
            margin-top: 50px;
        }
    </style>
</head>
<body>
<div class="container">
    <h2 class="mb-4">Modifier une séance</h2>

    <form action="seance?action=modifier" method="post">
        <input type="hidden" name="id" value="${seance.id}">

        <div class="mb-3">
            <label for="membreId" class="form-label">Membre</label>
            <select class="form-select" id="membreId" name="membreId" required>
                <c:forEach var="membre" items="${membres}">
                    <option value="${membre.id}" <c:if test="${membre.id == seance.id_Membre}">selected</c:if>>
                            ${membre.name}
                    </option>
                </c:forEach>
            </select>
        </div>

        <div class="mb-3">
            <label for="entraineurId" class="form-label">Entraîneur</label>
            <select class="form-select" id="entraineurId" name="entraineurId" required>
                <c:forEach var="entraineur" items="${entraineurs}">
                    <option value="${entraineur.id}" <c:if test="${entraineur.id == seance.id_Entraineur}">selected</c:if>>
                            ${entraineur.name}
                    </option>
                </c:forEach>
            </select>
        </div>

        <div class="mb-3">
            <label for="dateHeure" class="form-label">Date et heure</label>
            <input type="date" class="form-control" id="dateHeure" name="dateHeure"
                   value="<fmt:formatDate value="${seance.datehour}" pattern="yyyy-MM-dd" />" required>
        </div>

        <div class="d-flex justify-content-between">
            <button type="submit" class="btn btn-primary">Enregistrer</button>
            <a href="seance?action=afficher" class="btn btn-secondary">Annuler</a>
        </div>
    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>