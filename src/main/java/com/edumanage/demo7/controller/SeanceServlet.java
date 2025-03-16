package com.edumanage.demo7.controller;

import com.edumanage.demo7.doa.EntraineurDAO;
import com.edumanage.demo7.doa.MembreDAO;
import com.edumanage.demo7.doa.SeanceDAO;
import com.edumanage.demo7.model.Entraineur;
import com.edumanage.demo7.model.Membre;
import com.edumanage.demo7.model.Seance;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/seance")
public class SeanceServlet extends HttpServlet {
    private SeanceDAO seanceDAO;
    private MembreDAO membreDAO;
    private EntraineurDAO entraineurDAO;

    @Override
    public void init() {
        try {
            seanceDAO = new SeanceDAO();
            membreDAO = new MembreDAO();
            entraineurDAO = new EntraineurDAO();
        } catch (SQLException | ClassNotFoundException e) {
            throw new RuntimeException("Error initializing DAOs", e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if (action == null || action.isEmpty()) {
            action = "afficher";
        }

        try {
            switch (action) {
                case "new":
                    showForm(request, response);
                    break;
                case "ajouter":
                    ajouterSeance(request, response);
                    break;
                case "modifier":
                    modifierSeance(request, response);
                    break;
                case "supprimer":
                    supprimerSeance(request, response);
                    break;
                case "afficher":
                    afficherSeances(request, response);
                    break;
                default:
                    response.sendRedirect("/seance?action=afficher");
                    break;
            }
        } catch (SQLException e) {
            throw new ServletException("Erreur SQL", e);
        }
    }

    private void showForm(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        List<Membre> membres = membreDAO.afficherMembre();
        List<Entraineur> entraineurs = entraineurDAO.afficherEntraineur();
        request.setAttribute("membres", membres);
        request.setAttribute("entraineurs", entraineurs);
        request.getRequestDispatcher("/WEB-INF/Seance/ajouterSeance.jsp").forward(request, response);
    }

    private void ajouterSeance(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
        int membreId = Integer.parseInt(request.getParameter("membreId"));
        int entraineurId = Integer.parseInt(request.getParameter("entraineurId"));
        Date dateHeure = Date.valueOf(request.getParameter("dateHeure"));
        Seance seance = new Seance(membreId, entraineurId, dateHeure);
        seanceDAO.ajouterSeance(seance);
        response.sendRedirect("seance?action=afficher");
    }

    private void modifierSeance(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        int membreId = Integer.parseInt(request.getParameter("membreId"));
        int entraineurId = Integer.parseInt(request.getParameter("entraineurId"));
        Date dateHeure = Date.valueOf(request.getParameter("dateHeure"));
        Seance seance = new Seance(id, membreId, entraineurId, dateHeure);
        seanceDAO.modifierSeance(seance);
        response.sendRedirect("seance?action=afficher");
    }

    private void supprimerSeance(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        seanceDAO.supprimerSeance(id);
        response.sendRedirect("seance?action=afficher");
    }

    private void afficherSeances(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        List<Seance> seances = seanceDAO.afficherSeances();
        request.setAttribute("seances", seances);
        request.getRequestDispatcher("/WEB-INF/Seance/afficherSeance.jsp").forward(request, response);
    }
}