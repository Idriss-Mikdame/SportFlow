package com.edumanage.demo7.controller;

import com.edumanage.demo7.doa.UserDAO;
import com.edumanage.demo7.model.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private UserDAO userDAO;
    public void init() throws ServletException {
        try {
            userDAO = new UserDAO();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");



        User user = userDAO.getUser(username, password);

        if (user != null) {
            req.getSession().setAttribute("user", user);
            resp.sendRedirect(req.getContextPath() + "/index.jsp");
        } else {
            req.setAttribute("error", "Invalid username or password");
            req.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(req, resp);
        }
    }
}
