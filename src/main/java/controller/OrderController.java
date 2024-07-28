package controller;

import model.Order;
import model.OrderItem;
import model.User;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/orderServlet")
public class OrderController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");

        if (user != null) {
            List<OrderItem> items = new ArrayList<>();
            // Retrieve order items from request or database

            double total = 0.0;
            for (OrderItem item : items) {
                total += item.getPrice() * item.getQuantity();
            }

            Order order = new Order();
            order.setUser(user);
            order.setItems(items);
            order.setTotal(total);
            order.setStatus("Pending");

            // Save order to the database

            response.sendRedirect("orderConfirmation.jsp"); // Redirect to order confirmation page
        } else {
            response.sendRedirect("login.jsp"); // Redirect to login page if not authenticated
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Handle requests for viewing orders
    }
}
