<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <title>Liste des séances</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
    <style>
        .container {
            margin-top: 30px;
        }
        .btn-action {
            margin-right: 5px;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <h2>Liste des séances</h2>
        <a href="seance?action=new" class="btn btn-primary">
            <i class="bi bi-plus-circle"></i> Nouvelle séance
        </a>
    </div>

    <c:if test="${empty seances}">
        <div class="alert alert-info">
            Aucune séance n'a été trouvée.
        </div>
    </c:if>

    <c:if test="${not empty seances}">
        <div class="table-responsive">
            <table class="table table-striped table-hover">
                <thead class="table-dark">
                <tr>
                    <th>ID</th>
                    <th>Membre</th>
                    <th>Entraîneur</th>
                    <th>Date et heure</th>
                    <th>Actions</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="seance" items="${seances}">
                    <tr>
                        <td>${seance.id}</td>
                        <td>${seance.id_Membre}</td>
                        <td>${seance.id_Entraineur}</td>
                        <td><fmt:formatDate value="${seance.datehour}" pattern="yyyy-MM-dd" /></td>
                        <td>
                            <a href="seance?action=modifier&id=${seance.id}" class="btn btn-sm btn-warning btn-action">
                                <i class="bi bi-pencil"></i> Modifier
                            </a>
                            <a href="#" onclick="confirmerSuppression(${seance.id})" class="btn btn-sm btn-danger btn-action">
                                <i class="bi bi-trash"></i> Supprimer
                            </a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </c:if>
</div>

<script>
    function confirmerSuppression(id) {
        if (confirm("Êtes-vous sûr de vouloir supprimer cette séance ?")) {
            window.location.href = "seance?action=supprimer&id=" + id;
        }
    }
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>