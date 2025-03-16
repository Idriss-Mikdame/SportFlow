package com.edumanage.demo7.doa;

import com.edumanage.demo7.DBC.ConnectionDB;
import com.edumanage.demo7.model.Seance;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class SeanceDAO {
    private Connection connection;

    public SeanceDAO() throws SQLException, ClassNotFoundException {
        connection = ConnectionDB.getConnection();
    }

    public void ajouterSeance(Seance seance) throws SQLException {
        String query = "INSERT INTO seance(id_Membre, id_Entraineur, dateHeure) VALUES (?, ?, ?)";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setInt(1, seance.getId_Membre());
            preparedStatement.setInt(2, seance.getId_Entraineur());
            preparedStatement.setDate(3, seance.getDatehour());
            preparedStatement.executeUpdate();
        }
    }

    public void supprimerSeance(int id) throws SQLException {
        String query = "DELETE FROM seance WHERE id = ?";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setInt(1, id);
            preparedStatement.executeUpdate();
        }
    }

    public void supprimerSeance(int id_Membre, int id_Entraineur) throws SQLException {
        String query = "DELETE FROM seance WHERE id_Membre = ? AND id_Entraineur = ?";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setInt(1, id_Membre);
            preparedStatement.setInt(2, id_Entraineur);
            preparedStatement.executeUpdate();
        }
    }

    public List<Seance> afficherSeances() throws SQLException {
        List<Seance> seances = new ArrayList<>();
        String query = "SELECT * FROM seance";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query);
             ResultSet resultSet = preparedStatement.executeQuery()) {
            while (resultSet.next()) {
                Seance seance = new Seance(
                        resultSet.getInt("id"),
                        resultSet.getInt("id_Membre"),
                        resultSet.getInt("id_Entraineur"),
                        resultSet.getDate("dateHeure"));
                seances.add(seance);
            }
        }
        return seances;
    }

    public Seance getSeanceById(int id) throws SQLException {
        String query = "SELECT * FROM seance WHERE id = ?";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setInt(1, id);
            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                if (resultSet.next()) {
                    return new Seance(
                            resultSet.getInt("id"),
                            resultSet.getInt("id_Membre"),
                            resultSet.getInt("id_Entraineur"),
                            resultSet.getDate("dateHeure"));
                }
            }
        }
        return null;
    }

    public void modifierSeance(Seance seance) throws SQLException {
        String query = "UPDATE seance SET id_Membre = ?, id_Entraineur = ?, dateHeure = ? WHERE id = ?";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setInt(1, seance.getId_Membre());
            preparedStatement.setInt(2, seance.getId_Entraineur());
            preparedStatement.setDate(3, seance.getDatehour());
            preparedStatement.setInt(4, seance.getId());
            preparedStatement.executeUpdate();
        }
    }
}