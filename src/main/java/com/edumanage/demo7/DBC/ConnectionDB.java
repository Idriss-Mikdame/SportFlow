package com.edumanage.demo7.DBC;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class ConnectionDB {

    public static Connection getConnection() throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        
        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/sportflow", "root", "");

        Statement stm = connection.createStatement();

        // Table Members
        String MemberTable = "CREATE TABLE IF NOT EXISTS members ("
                + "id INT(12) PRIMARY KEY AUTO_INCREMENT, "
                + "nom VARCHAR(50), "
                + "naissance DATE, "
                + "sportpratique VARCHAR(50))";
        stm.executeUpdate(MemberTable);

        // Table Entraineurs
        String Entraineurtable = "CREATE TABLE IF NOT EXISTS entraineurs ("
                + "id INT(10) PRIMARY KEY AUTO_INCREMENT, "
                + "nom VARCHAR(50), "
                + "specialite VARCHAR(50))";
        stm.executeUpdate(Entraineurtable);

        // Table Séance
        String seanceTable = "CREATE TABLE IF NOT EXISTS seance ("
                + "id INT(12) PRIMARY KEY AUTO_INCREMENT, "
                + "id_Membre INT(10), "
                + "id_Entraineur INT(10), "
                + "dateHeure DATE , "
                + "FOREIGN KEY (id_Membre) REFERENCES members(id), "
                + "FOREIGN KEY (id_Entraineur) REFERENCES entraineurs(id))";
        stm.executeUpdate(seanceTable);

        // Table Users
        String userrTable = "CREATE TABLE IF NOT EXISTS users ("
                + "id INT(12) PRIMARY KEY AUTO_INCREMENT, "
                + "username VARCHAR(50), "
                + "password VARCHAR(50), "
                + "role VARCHAR(50))";
        stm.executeUpdate(userrTable);

        return connection;
    }
}
