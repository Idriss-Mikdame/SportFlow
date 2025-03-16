<%@ page import="com.edumanage.demo7.model.Membre" %>
<%@ page import="com.edumanage.demo7.model.Entraineur" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Ajouter une séance</title>
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
    <h2 class="mb-4">Ajouter une nouvelle séance</h2>

    <form action="seance?action=ajouter" method="post">
        <div class="mb-3">
            <label for="membreId" class="form-label">Membre</label>
            <select class="form-select" id="membreId" name="membreId" required>
                <option value="" selected disabled>Sélectionnez un membre</option>
                <c:forEach var="membre" items="${membres}">
                    <option value="${membre.id}">${membre.name}</option>
                </c:forEach>
            </select>
        </div>

        <div class="mb-3">
            <label for="entraineurId" class="form-label">Entraîneur</label>
            <select class="form-select" id="entraineurId" name="entraineurId" required>
                <option value="" selected disabled>Sélectionnez un entraîneur</option>
                <c:forEach var="entraineur" items="${entraineurs}">
                    <option value="${entraineur.id}">${entraineur.name}</option>
                </c:forEach>
            </select>
        </div>

        <div class="mb-3">
            <label for="dateHeure" class="form-label">Date et heure</label>
            <input type="datetime-local" class="form-control" id="dateHeure" name="dateHeure" required>
        </div>

        <div class="d-flex justify-content-between">
            <button type="submit" class="btn btn-primary">Ajouter</button>
            <a href="seance?action=afficher" class="btn btn-secondary">Annuler</a>
        </div>
    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>