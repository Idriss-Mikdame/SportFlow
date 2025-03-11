package com.edumanage.demo7.DBC;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class ConnectionDB {

    public static  Connection getConnection() throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.cj.jdbc.Driver");

        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/sportflow", "root", "");

        Statement stm = connection.createStatement();
        String MemberTable = "CREATE TABLE IF NOT EXISTS members ( id INT(12) primary key AUTO_ICREAMANT," +
                "nom VARCHAR(50)," +
                "naissance DATE," +
                "sportpratique VARCHAR(50)";
        stm.executeUpdate(MemberTable);
        String Entraineurtable = "CREATE TABLE IF NOT EXISTS entraineurs ( id INT(10) primary key AUTO_ICREAMANT,"
                + "nom VARCHAR(50),"
                + "specialite DATE,";
        stm.executeUpdate(Entraineurtable);
        String seanceTable = "CREATE TABALE IF NOT EXISTS seance ( id INT(12) primary key AUTO_ICREAMANT, "
                       + "id_Membre  INT(10),"
                       + "id_Entraineur  INT(10),"
                       + "dateHeure DATETIME,"
                       + "foreign key (id_Membre) references membres(id),"
                       + "foreign key (id_Seance) references entraineurs(id),";
        stm.executeUpdate(seanceTable);
        return connection;
    }
}