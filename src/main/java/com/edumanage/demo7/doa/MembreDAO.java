package com.edumanage.demo7.doa;

import com.edumanage.demo7.DBC.ConnectionDB;
import com.edumanage.demo7.model.Membre;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class MembreDAO {
    private Connection connection;
    public MembreDAO() throws SQLException, ClassNotFoundException {
        connection = ConnectionDB.getConnection();

    }
}
