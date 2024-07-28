package controller;

import model.User;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import connectDB.ConnectDB;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if (authenticateUser(username, password)) {
            HttpSession session = request.getSession();
            session.setAttribute("user", new User(username, password));
            response.sendRedirect("Index.jsp"); // Redirect to home page on successful login
        } else {
            request.setAttribute("loginError", "Invalid username or password.");
            request.getRequestDispatcher("login.jsp").forward(request, response); // Forward back to login page
        }
    }

    private boolean authenticateUser(String username, String password) {
        boolean isValid = false;

        try (Connection conn = ConnectDB.getConnection();
             PreparedStatement stmt = conn.prepareStatement("SELECT * FROM Users WHERE username = ? AND password = ?")) {

            stmt.setString(1, username);
            stmt.setString(2, password);

            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    isValid = true;
                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return isValid;
    }
}
