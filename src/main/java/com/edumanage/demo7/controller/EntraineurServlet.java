package com.edumanage.demo7.controller;

import com.edumanage.demo7.doa.EntraineurDAO;
import com.edumanage.demo7.model.Entraineur;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/entraineur")
public class EntraineurServlet  extends HttpServlet {
    private EntraineurDAO entraineurDAO;
    @Override
    public void init() throws ServletException {
        try {
            entraineurDAO = new EntraineurDAO();
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String action = request.getParameter("action");
    if (action == null) {
       response.sendRedirect("/afficher");
    }
    switch (action) {
        case  "new":
        showNewForm(request, response);
        break;
        case "ajouter":
            try {
                AjouteEntraineut(request,response);
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
            break;
        case "afficherbyID":
            try {
                afficheEntraineurbyid(request,response);
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
            break;
        case "modifier":
            try {
                ModifierEntraineur(request,response);
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
            break;
        case "supprimer":
            try {
                SupprimerEnraineur(request,response);
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
            break;
        case "afficher":
            try {
                AfficherEntraineur(request,response);
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
            break;
        default:
            response.sendRedirect("/entraineur");
            break;
    }
    }

    private void afficheEntraineurbyid(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Entraineur entraineurbyid = entraineurDAO.getEntraineurById(id);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/Entraineur/Entraineur.jsp");
        request.setAttribute("entraineurbyid", entraineurbyid);
        dispatcher.forward(request, response);

    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/Entraineur/ajouterEntraineur.jsp");
        dispatcher.forward(request, response);
    }

    private void AfficherEntraineur(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
        List<Entraineur> listentraineurs = entraineurDAO.afficherEntraineur();
        request.setAttribute("entraineurs", listentraineurs);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/Student/AfficherStudent.jsp");
        dispatcher.forward(request, response);

    }

    private void SupprimerEnraineur(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        entraineurDAO.supprimerEntraineur(id);
        response.sendRedirect("afficher");


    }

    private void ModifierEntraineur(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
        int id = Integer.parseInt(request.getParameter("id"));
        String nom = request.getParameter("nom");
        String specialite = request.getParameter("specialite");
        Entraineur entraineur = new Entraineur(id, nom, specialite);
        entraineurDAO.modifierEntraineur(entraineur);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/Entraineur/modifierStudent.jsp");
        request.setAttribute("student", entraineur);
        dispatcher.forward(request, response);
    }


    private void AjouteEntraineut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        String  nom = request.getParameter("nom");
        String specialite = request.getParameter("specialite");
        Entraineur entraineur = new Entraineur(nom, specialite);
        entraineurDAO.ajouterEntraineur(entraineur);
        response.sendRedirect("Afficher");

    }


}
