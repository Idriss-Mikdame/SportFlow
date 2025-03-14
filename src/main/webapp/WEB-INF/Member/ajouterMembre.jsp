<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ajouter un Membre</title>
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
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
            min-height: 100vh;
        }

        .container {
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            padding: 30px;
            width: 100%;
            max-width: 500px;
            margin-top: 20px;
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
            width: 100%;
            transition: background-color 0.3s;
        }

        .btn:hover {
            background-color: var(--primary-hover);
        }

        .back-link {
            display: inline-block;
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

        .form-footer {
            text-align: center;
            margin-top: 15px;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Ajouter un Membre</h2>
    <form action="membres?action=ajouter" method="post">
        <div class="form-group">
            <label for="nom">Nom :</label>
            <input type="text" id="nom" name="nom" required>
        </div>

        <div class="form-group">
            <label for="naissance">Date de naissance :</label>
            <input type="date" id="naissance" name="naissance" required>
        </div>

        <div class="form-group">
            <label for="sportpratique">Sport Pratiqué :</label>
            <input type="text" id="sportpratique" name="sportpratique" required>
        </div>

        <button type="submit" class="btn">Ajouter</button>

        <div class="form-footer">
            <a href="membres?action=afficher" class="back-link">Retour à la liste des membres</a>
        </div>
    </form>
</div>
</body>
</html>