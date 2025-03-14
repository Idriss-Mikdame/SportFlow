<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.edumanage.demo7.model.Membre" %>

<%
    List<Membre> membreList = (List<Membre>) request.getAttribute("membreList");
%>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Liste des Membres</title>
    <style>
        :root {
            --primary-color: #4a6fa5;
            --primary-hover: #3a5a8a;
            --danger-color: #dc3545;
            --danger-hover: #bd2130;
            --light-bg: #f8f9fa;
            --border-color: #dee2e6;
            --text-color: #333;
            --light-text: #6c757d;
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
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 15px;
        }

        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 30px;
            flex-wrap: wrap;
        }

        h2 {
            color: var(--primary-color);
            margin-bottom: 10px;
            font-weight: 600;
        }

        .btn {
            display: inline-block;
            padding: 10px 16px;
            background-color: var(--primary-color);
            color: white;
            text-decoration: none;
            border-radius: 4px;
            font-weight: 500;
            transition: background-color 0.3s;
        }

        .btn:hover {
            background-color: var(--primary-hover);
        }

        .btn-danger {
            background-color: var(--danger-color);
        }

        .btn-danger:hover {
            background-color: var(--danger-hover);
        }

        .btn-sm {
            padding: 5px 10px;
            font-size: 14px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background-color: white;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            overflow: hidden;
        }

        th, td {
            padding: 12px 15px;
            text-align: left;
        }

        th {
            background-color: var(--primary-color);
            color: white;
            font-weight: 500;
            text-transform: uppercase;
            font-size: 14px;
            letter-spacing: 0.5px;
        }

        tr:nth-child(even) {
            background-color: rgba(0, 0, 0, 0.02);
        }

        tr:hover {
            background-color: rgba(74, 111, 165, 0.05);
        }

        td {
            border-bottom: 1px solid var(--border-color);
        }

        .actions {
            display: flex;
            gap: 10px;
        }

        .actions a {
            text-decoration: none;
        }

        .empty-message {
            text-align: center;
            padding: 20px;
            font-style: italic;
            color: var(--light-text);
        }

        @media (max-width: 768px) {
            .header {
                flex-direction: column;
                align-items: flex-start;
                gap: 15px;
            }

            table {
                display: block;
                overflow-x: auto;
            }
        }
    </style>
</head>
<body>
<div class="container">
    <div class="header">
        <h2>Liste des Membres</h2>
        <a href="membres?action=new" class="btn">+ Ajouter un Nouveau Membre</a>
    </div>

    <% if (membreList == null || membreList.isEmpty()) { %>
    <div class="empty-message">Aucun membre trouvé. Ajoutez un nouveau membre pour commencer.</div>
    <% } else { %>
    <table>
        <thead>
        <tr>
            <th>ID</th>
            <th>Nom</th>
            <th>Date de Naissance</th>
            <th>Sport Pratiqué</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <% for (Membre membre : membreList) { %>
        <tr>
            <td><%= membre.getId() %></td>
            <td><%= membre.getNom() %></td>
            <td><%= membre.getNaissance() %></td>
            <td><%= membre.getSportPratique() %></td>
            <td class="actions">
                <a href="membres?action=afficherbyID&id=<%= membre.getId() %>" class="btn btn-sm">Modifier</a>
                <a href="membres?action=supprimer&id=<%= membre.getId() %>"
                   onclick="return confirm('Voulez-vous vraiment supprimer ce membre ?');"
                   class="btn btn-sm btn-danger">Supprimer</a>
            </td>
        </tr>
        <% } %>
        </tbody>
    </table>
    <% } %>
</div>
</body>
</html>