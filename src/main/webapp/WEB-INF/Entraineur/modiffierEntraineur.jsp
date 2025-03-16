<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.edumanage.demo7.model.Entraineur" %>
<%
    Entraineur entraineur = (Entraineur) request.getAttribute("entraineurById");
%>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modifier Entraineur - SportFlow</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }
        .main-content {
            flex: 1;
            padding: 40px 0;
        }
        .form-container {
            max-width: 600px;
            background: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            margin: 0 auto;
        }
        .navbar {
            background: linear-gradient(to right, #007bff, #6610f2);
            padding: 15px 0;
        }
        .navbar-brand {
            font-weight: bold;
            color: white !important;
        }
        .nav-link {
            color: rgba(255, 255, 255, 0.85) !important;
            margin-right: 15px;
        }
        .nav-link:hover {
            color: white !important;
        }
        .nav-link.active {
            color: white !important;
            font-weight: bold;
        }
        .dropdown-menu {
            background-color: #f8f9fa;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
        .dropdown-item:hover {
            background-color: #e9ecef;
        }
        footer {
            background: #343a40;
            padding: 20px 0;
            margin-top: auto;
        }
        h2 {
            color: #343a40;
            margin-bottom: 30px;
        }
        .btn-success {
            background: #28a745;
            border: none;
        }
        .btn-success:hover {
            background: #218838;
        }
        .btn-secondary {
            background: #6c757d;
        }
        .btn-secondary:hover {
            background: #5a6268;
        }
    </style>
</head>
<body>
<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark">
    <div class="container">
        <a class="navbar-brand" href="#">SportFlow</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="index.jsp">Accueil</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link active dropdown-toggle" href="#" id="navbarDropdownEntraineurs" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Entraîneurs
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdownEntraineurs">
                        <li><a class="dropdown-item" href="entraineur?action=new">Ajouter</a></li>
                        <li><a class="dropdown-item" href="entraineur?action=afficher">Afficher</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="membres?action=new">Membres</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Seance</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Main Content -->
<div class="main-content">
    <div class="container">
        <div class="form-container">
            <h2 class="text-center">Modifier Entraîneur</h2>
            <form action="entraineur?action=modifier" method="post">
                <input type="hidden" name="id" value="<%= entraineur.getId() %>">
                <div class="mb-3">
                    <label for="nom" class="form-label">Nom</label>
                    <input type="text" class="form-control" id="nom" name="nom" value="<%= entraineur.getNom() %>" required>
                </div>
                <div class="mb-3">
                    <label for="specialite" class="form-label">Spécialité</label>
                    <input type="text" class="form-control" id="specialite" name="specialite" value="<%= entraineur.getSpecialite() %>" required>
                </div>
                <div class="text-center mt-4">
                    <button type="submit" class="btn btn-success">Modifier</button>
                    <a href="entraineur?action=afficher" class="btn btn-secondary ms-2">Annuler</a>
                </div>
            </form>
        </div>
    </div>
</div>

<!-- Footer -->
<footer class="text-white text-center">
    <div class="container">
        <div class="row">
            <div class="col-md-4 mb-3 mb-md-0">
                <h5>À propos</h5>
                <p class="small">SportFlow est une plateforme de gestion sportive pour entraîneurs et athlètes.</p>
            </div>
            <div class="col-md-4 mb-3 mb-md-0">
                <h5>Liens rapides</h5>
                <ul class="list-unstyled">
                    <li><a href="entraineur?action=afficher" class="text-white">Entraîneurs</a></li>
                    <li><a href="membres?action=new" class="text-white">Membres</a></li>
                    <li><a href="#" class="text-white">Seance</a></li>
                </ul>
            </div>
            <div class="col-md-4">
                <h5>Contact</h5>
                <p class="small">Email: contact@sportflow.com<br>Tél: +33 1 23 45 67 89</p>
            </div>
        </div>
        <hr class="my-3">
        <p class="small mb-0">&copy; 2025 SportFlow - Tous droits réservés</p>
    </div>
</footer>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>