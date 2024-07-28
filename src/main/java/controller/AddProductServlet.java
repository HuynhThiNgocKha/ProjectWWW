package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Product;
import model.Cart;

@WebServlet("/AddProductServlet")
public class AddProductServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Nhận dữ liệu từ form
        String name = request.getParameter("name");
        String priceString = request.getParameter("price");
        String image = request.getParameter("image");
        
        double price = 0;
        try {
            price = Double.parseDouble(priceString);
        } catch (NumberFormatException e) {
            // Xử lý lỗi nếu giá không hợp lệ
            e.printStackTrace();
            response.sendRedirect("errorPage.jsp");
            return;
        }
        
        // Tạo đối tượng sản phẩm
        Product product = new Product();
        product.setProductName(name);
        product.setPrice(price);
        product.setImage(image);

        // Nhận đối tượng giỏ hàng từ session
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        
        // Nếu giỏ hàng chưa tồn tại, tạo mới
        if (cart == null) {
            cart = new Cart();
            session.setAttribute("cart", cart);
        }

        // Thêm sản phẩm vào giỏ hàng
        cart.addProduct(product);
        
        // Chuyển hướng đến trang giỏ hàng
        response.sendRedirect("GioHang.jsp");
    }
}
