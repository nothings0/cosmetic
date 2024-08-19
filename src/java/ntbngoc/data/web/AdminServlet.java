/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package ntbngoc.data.web;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import ntbngoc.data.dao.Database;
import ntbngoc.data.model.Order;
import ntbngoc.data.model.Product;
import ntbngoc.data.model.User;

/**
 *
 * @author Admin
 */
public class AdminServlet extends HttpServlet {

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        List<Order> orders = Database.getOrderDao().getAllOrders();
        
        List<User> users = Database.getUserDao().findAllUsers();
            
        int orderCount = Database.getOrderDao().getOrderCount();
        int userCount = Database.getUserDao().getUserCount();
        double totalRevenue = Database.getOrderDao().getTotalRevenue();

        List<Product> products = Database.getProductDao().findRandom(10);
        
        request.setAttribute("orderCount", orderCount);
        request.setAttribute("userCount", userCount);
        request.setAttribute("totalRevenue", totalRevenue);

        request.setAttribute("orders", orders);
        request.setAttribute("users", users);
        request.setAttribute("products", products);
        
        request.setAttribute("title", "Admin Page");
        request.getRequestDispatcher("./views/admin.jsp").include(request, response);
    }

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    
}
