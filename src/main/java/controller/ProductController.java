package controller;

import model.Product;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/productServlet")
public class ProductController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("add".equals(action)) {
            String name = request.getParameter("nameProduct");
         // Lấy giá trị price từ request và chuyển đổi sang double
            String priceString = request.getParameter("price");
            double price = 0;

            try {
                // Chuyển đổi chuỗi thành double
                price = Double.parseDouble(priceString);
            } catch (NumberFormatException e) {
                e.printStackTrace();
            }
            String image = request.getParameter("image");
            
            Product product = new Product();
            product.setProductName(name);
            product.setPrice(price);
            product.setImage(action);

            // Save product to the database

            response.sendRedirect("SanPham.jsp"); // Redirect to product list page
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Handle requests for viewing products
    }
}
