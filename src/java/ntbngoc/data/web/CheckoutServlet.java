package ntbngoc.data.web;

import ntbngoc.data.model.Cart;
import ntbngoc.data.model.Order;
import ntbngoc.data.model.OrderItem;
import ntbngoc.data.dao.Database;
import ntbngoc.data.model.CartItem;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import ntbngoc.data.model.User;

//@WebServlet("/checkout")
public class CheckoutServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");

        if (cart == null || cart.getItems().isEmpty()) {
            // Nếu giỏ hàng rỗng, chuyển hướng người dùng
            response.sendRedirect("cart");
            return;
        }

        // Thu thập thông tin người dùng và giỏ hàng
        User user = (User) session.getAttribute("user"); // ID người dùng từ session
        String address = request.getParameter("address");
        
        if (user == null) {
            response.sendRedirect("login");
            return;
        }
        if (address == null || address.trim().isEmpty()) {
            response.sendRedirect("cart");
            return;
        }

        // Tạo đối tượng Order
        Order order = new Order();
        order.setUserId(user.getId());
        order.setAddress(address);
        order.setTotalPrice(cart.getTotalPrice());
        order.setOrderDate(new java.util.Date());
        order.setStatus("Pending");

        // Thêm sản phẩm vào đơn hàng
        for (CartItem item : cart.getItems()) {
            OrderItem orderItem = new OrderItem(item.getProduct().getId(), item.getQuantity(), item.getProduct().getPrice());
            order.addItem(orderItem);
        }

        // Lưu đơn hàng vào cơ sở dữ liệu
        Database.getOrderDao().saveOrder(order);

        // Xóa giỏ hàng sau khi thanh toán
        session.removeAttribute("cart");

        // Chuyển hướng đến trang xác nhận đơn hàng
        response.sendRedirect("./views/orderConfirmation.jsp");
    }
}
