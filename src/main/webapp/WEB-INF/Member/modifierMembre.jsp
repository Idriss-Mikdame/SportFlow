<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.edumanage.demo7.model.Membre" %>

<%
    Membre membre = (Membre) request.getAttribute("membreById");
%>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modifier un Membre - SportFlow</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        :root {
            --primary-color: #4a6fa5;
            --primary-hover: #3a5a8a;
            --light-bg: #f8f9fa;
            --border-color: #dee2e6;
            --text-color: #333;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            background-color: var(--light-bg);
            color: var(--text-color);
            line-height: 1.6;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
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

        .main-content {
            flex: 1;
            padding: 40px 0;
        }

        .container-form {
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            padding: 30px;
            width: 100%;
            max-width: 600px;
            margin: 0 auto;
        }

        h2 {
            color: var(--primary-color);
            text-align: center;
            margin-bottom: 25px;
            font-weight: 600;
            position: relative;
            padding-bottom: 10px;
        }

        h2::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 50%;
            transform: translateX(-50%);
            width: 60px;
            height: 3px;
            background-color: var(--primary-color);
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: 500;
            color: #555;
        }

        input[type="text"],
        input[type="date"] {
            width: 100%;
            padding: 12px 15px;
            border: 1px solid var(--border-color);
            border-radius: 4px;
            font-size: 16px;
            transition: border-color 0.3s;
        }

        input[type="text"]:focus,
        input[type="date"]:focus {
            border-color: var(--primary-color);
            outline: none;
            box-shadow: 0 0 0 2px rgba(74, 111, 165, 0.2);
        }

        .btn {
            background-color: var(--primary-color);
            color: white;
            border: none;
            padding: 12px 20px;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            font-weight: 500;
            transition: background-color 0.3s;
        }

        .btn:hover {
            background-color: var(--primary-hover);
        }

        .btn-secondary {
            background-color: #6c757d;
        }

        .btn-secondary:hover {
            background-color: #5a6268;
        }

        .form-buttons {
            display: flex;
            justify-content: center;
            gap: 15px;
            margin-top: 20px;
        }

        .back-link {
            display: block;
            text-align: center;
            margin-top: 20px;
            color: var(--primary-color);
            text-decoration: none;
            font-weight: 500;
            transition: color 0.3s;
        }

        .back-link:hover {
            color: var(--primary-hover);
            text-decoration: underline;
        }

        footer {
            background: #343a40;
            padding: 20px 0;
            color: white;
            margin-top: auto;
        }

        footer h5 {
            font-size: 18px;
            margin-bottom: 15px;
        }

        footer .list-unstyled li {
            margin-bottom: 8px;
        }

        footer a {
            color: white;
            text-decoration: none;
            transition: color 0.3s;
        }

        footer a:hover {
            color: #adb5bd;
            text-decoration: underline;
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
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownEntraineurs" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Entraîneurs
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdownEntraineurs">
                        <li><a class="dropdown-item" href="entraineur?action=new">Ajouter</a></li>
                        <li><a class="dropdown-item" href="entraineur?action=afficher">Afficher</a></li>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link active dropdown-toggle" href="#" id="navbarDropdownMembres" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Membres
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdownMembres">
                        <li><a class="dropdown-item" href="membres?action=new">Ajouter</a></li>
                        <li><a class="dropdown-item" href="membres?action=afficher">Afficher</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Séances</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Main Content -->
<div class="main-content">
    <div class="container">
        <div class="container-form">
            <h2>Modifier un Membre</h2>
            <form action="membres?action=modifier" method="post">
                <input type="hidden" name="id" value="<%= membre.getId() %>">

                <div class="form-group">
                    <label for="nom">Nom :</label>
                    <input type="text" id="nom" name="nom" value="<%= membre.getNom() %>" required>
                </div>

                <div class="form-group">
                    <label for="naissance">Date de naissance :</label>
                    <input type="date" id="naissance" name="naissance"
                           value="<%= membre.getNaissance().toString().split(" ")[0] %>" required>
                </div>

                <div class="form-group">
                    <label for="sportpratique">Sport Pratiqué :</label>
                    <input type="text" id="sportpratique" name="sportpratique" value="<%= membre.getSportPratique() %>" required>
                </div>

                <div class="form-buttons">
                    <button type="submit" class="btn">Enregistrer les modifications</button>
                    <a href="membres?action=afficher" class="btn btn-secondary">Annuler</a>
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
                    <li><a href="membres?action=afficher" class="text-white">Membres</a></li>
                    <li><a href="#" class="text-white">Séances</a></li>
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