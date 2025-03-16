package com.edumanage.demo7.doa;

import com.edumanage.demo7.DBC.ConnectionDB;
import com.edumanage.demo7.model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAO {
    private Connection connection;
    public UserDAO() throws SQLException, ClassNotFoundException {
        connection = ConnectionDB.getConnection();
    }
    public User getUser(String username, String password) {
        String sql = "SELECT * FROM users WHERE name = ? AND password = ?";

        try (PreparedStatement stmt = connection.prepareStatement(sql)) {
            stmt.setString(1, username);
            stmt.setString(2, password);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    return new User(rs.getInt("id"), rs.getString("name"), rs.getString("password"));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

}
