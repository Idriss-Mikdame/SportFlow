<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ajouter Entraineur</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .container {
            max-width: 600px;
            background: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        header, footer {
            border-radius: 10px;
        }
        header {
            background: linear-gradient(to right, #007bff, #6610f2);
        }
        footer {
            background: #343a40;
        }
        h2 {
            color: #343a40;
        }
        .btn-primary {
            background: linear-gradient(to right, #007bff, #6610f2);
            border: none;
        }
        .btn-secondary {
            background: #6c757d;
        }
    </style>
</head>
<body class="container mt-5">
<!-- Header -->
<header class="mb-4 p-3 text-white text-center">
    <h1>Gestion des Entraîneurs</h1>
    <div >
        <a href="entraineur?action=new" class="btn btn-secondary">Ajouter</a>
        <a href="entraineur?action=afficher" class="btn btn-secondary">Afficher</a>
    </div>
</header>

<h2 class="text-center">Ajouter un nouvel entraîneur</h2>
<form action="entraineur?action=ajouter" method="post">
    <div class="mb-3">
        <label for="nom" class="form-label">Nom</label>
        <input type="text" class="form-control" id="nom" name="nom" required>
    </div>
    <div class="mb-3">
        <label for="specialite" class="form-label">Spécialité</label>
        <input type="text" class="form-control" id="specialite" name="specialite" required>
    </div>
    <div class="text-center">
        <button type="submit" class="btn btn-primary">Ajouter</button>
        <a href="entraineur?action=afficher" class="btn btn-secondary">Annuler</a>
    </div>
</form>

<!-- Footer -->
<footer class="mt-5 p-3 text-white text-center">
    <p>&copy; 2025 SportFlow - Tous droits réservés</p>
</footer>
</body>
</html>
