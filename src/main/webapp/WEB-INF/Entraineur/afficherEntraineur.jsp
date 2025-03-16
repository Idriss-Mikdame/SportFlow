<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.edumanage.demo7.model.Entraineur" %>
<%
    List<Entraineur> entraineurs = (List<Entraineur>) request.getAttribute("entraineurs");
%>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Liste des Entraineurs - SportFlow</title>
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
        .table-container {
            background: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
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
            margin-bottom: 25px;
        }
        .btn-primary {
            background: linear-gradient(to right, #007bff, #6610f2);
            border: none;
        }
        .btn-primary:hover {
            background: linear-gradient(to right, #0069d9, #5a0fd3);
        }
        .page-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }
        .table th {
            background-color: #343a40;
            color: white;
        }
        .btn-sm {
            margin-right: 5px;
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
        <div class="table-container">
            <div class="page-header">
                <h2>Liste des Entraîneurs</h2>
                <a href="entraineur?action=new" class="btn btn-primary">Ajouter un Entraîneur</a>
            </div>
            <div class="table-responsive">
                <table class="table table-bordered">
                    <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nom</th>
                        <th>Spécialité</th>
                        <th>Actions</th>
                    </tr>
                    </thead>
                    <tbody>
                    <% for (Entraineur entraineur : entraineurs) { %>
                    <tr>
                        <td><%= entraineur.getId() %></td>
                        <td><%= entraineur.getNom() %></td>
                        <td><%= entraineur.getSpecialite() %></td>
                        <td>
                            <a href="entraineur?action=afficherbyID&id=<%= entraineur.getId() %>" class="btn btn-warning btn-sm">Modifier</a>
                            <a href="entraineur?action=supprimer&id=<%= entraineur.getId() %>" class="btn btn-danger btn-sm" onclick="return confirm('Êtes-vous sûr de vouloir supprimer cet entraîneur?')">Supprimer</a>
                        </td>
                    </tr>
                    <% } %>
                    </tbody>
                </table>
            </div>
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