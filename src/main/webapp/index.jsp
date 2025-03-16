<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Accueil - SportFlow</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
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
    .hero-section {
      background: linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)), url('/api/placeholder/1200/600') center/cover no-repeat;
      color: white;
      text-align: center;
      padding: 100px 0;
      border-radius: 10px;
      margin-bottom: 40px;
    }
    .hero-section h1 {
      font-size: 3rem;
      font-weight: 700;
      margin-bottom: 20px;
    }
    .hero-section p {
      font-size: 1.2rem;
      max-width: 700px;
      margin: 0 auto 30px;
    }
    .feature-card {
      background: white;
      border-radius: 10px;
      padding: 30px;
      box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
      text-align: center;
      transition: transform 0.3s ease;
      height: 100%;
    }
    .feature-card:hover {
      transform: translateY(-10px);
    }
    .feature-icon {
      font-size: 3rem;
      margin-bottom: 20px;
      color: #007bff;
    }
    .stats-section {
      background: linear-gradient(to right, #007bff, #6610f2);
      color: white;
      padding: 60px 0;
      border-radius: 10px;
      margin-top: 40px;
    }
    .stat-item {
      text-align: center;
    }
    .stat-number {
      font-size: 2.5rem;
      font-weight: 700;
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
    .btn-primary {
      background: linear-gradient(to right, #007bff, #6610f2);
      border: none;
      padding: 10px 20px;
    }
    .btn-primary:hover {
      background: linear-gradient(to right, #0069d9, #5a0fd3);
    }
    .cta-section {
      background-color: #f0f0f0;
      padding: 60px 0;
      text-align: center;
      border-radius: 10px;
      margin-top: 40px;
    }
    .cta-section h2 {
      margin-bottom: 30px;
      color: #343a40;
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
          <a class="nav-link active" href="index.jsp">Accueil</a>
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
        <li class="nav-item">
          <a class="nav-link" href="membres?action=new">Membres</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Séance</a>
        </li>
      </ul>
    </div>
  </div>
</nav>

<!-- Hero Section -->
<div class="main-content">
  <div class="container">
    <div class="hero-section">
      <h1>Bienvenue sur SportFlow</h1>
      <p>La plateforme complète pour la gestion de vos entraînements, athlètes et séances sportives.</p>
      <a href="#features" class="btn btn-primary btn-lg">Découvrir</a>
    </div>

    <!-- Features Section -->
    <section id="features">
      <div class="container">
        <div class="row">
          <div class="col-md-4 mb-4">
            <div class="feature-card">
              <div class="feature-icon">
                <i class="fas fa-user-tie"></i>
              </div>
              <h3>Gestion des Entraîneurs</h3>
              <p>Ajoutez et gérez facilement vos entraîneurs. Suivez leurs performances et leurs disponibilités.</p>
              <a href="entraineur?action=new" class="btn btn-primary mt-3">Ajouter un Entraîneur</a>
            </div>
          </div>
          <div class="col-md-4 mb-4">
            <div class="feature-card">
              <div class="feature-icon">
                <i class="fas fa-users"></i>
              </div>
              <h3>Gestion des Membres</h3>
              <p>Suivez les progrès de vos athlètes, leurs abonnements et leurs objectifs personnels.</p>
              <a href="membres?action=new" class="btn btn-primary mt-3">Ajouter un Membre</a>
            </div>
          </div>
          <div class="col-md-4 mb-4">
            <div class="feature-card">
              <div class="feature-icon">
                <i class="fas fa-calendar-check"></i>
              </div>
              <h3>Planification des Séances</h3>
              <p>Créez et organisez vos séances d'entraînement avec un calendrier interactif.</p>
              <a href="seance?action=new" class="btn btn-primary mt-3">Ajouter une Séance</a>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Stats Section -->
    <section class="stats-section">
      <div class="container">
        <div class="row">
          <div class="col-md-4 mb-4 mb-md-0">
            <div class="stat-item">
              <div class="stat-number">500+</div>
              <div class="stat-title">Athlètes Gérés</div>
            </div>
          </div>
          <div class="col-md-4 mb-4 mb-md-0">
            <div class="stat-item">
              <div class="stat-number">50+</div>
              <div class="stat-title">Entraîneurs</div>
            </div>
          </div>
          <div class="col-md-4">
            <div class="stat-item">
              <div class="stat-number">1000+</div>
              <div class="stat-title">Séances Planifiées</div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- CTA Section -->
    <section class="cta-section">
      <div class="container">
        <h2>Prêt à commencer ?</h2>
        <p class="mb-4">Découvrez comment SportFlow peut améliorer votre gestion sportive.</p>
        <div class="row justify-content-center">
          <div class="col-md-4 mb-3">
            <a href="entraineur?action=new" class="btn btn-primary w-100">AJOUTER UN ENTRAÎNEUR</a>
          </div>
          <div class="col-md-4 mb-3">
            <a href="membres?action=new" class="btn btn-primary w-100">AJOUTER UN MEMBRE</a>
          </div>
          <div class="col-md-4 mb-3">
            <a href="seance?action=new" class="btn btn-primary w-100">AJOUTER UNE SÉANCE</a>
          </div>
        </div>
      </div>
    </section>
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
          <li><a href="seance?action=new" class="text-white">Séance</a></li>
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