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
import ntbngoc.data.model.Cart;
import ntbngoc.data.model.CartItem;
import ntbngoc.data.model.Product;

/**
 *
 * @author pv
 */
public class CartController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet CartController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CartController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("title", "Cart Page");
        request.getRequestDispatcher("./views/cart.jsp").include(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
     @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        updateDelete(request, response);
    }

    void updateDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String action = request.getParameter("action");
        int id_product = Integer.parseInt(request.getParameter("id_product"));
        switch(action){
            case"update":
                doUpdate(request, id_product);  break;
            case"delete":
                doDelete(request, id_product);  break;
        }
        request.getRequestDispatcher("./views/cart.jsp").include(request, response);
    }
    void doUpdate(HttpServletRequest request, int id_product){
        Cart cart = (Cart) request.getSession().getAttribute("cart");
        int quantity =Integer.parseInt(request.getParameter("quantity"));
        for(CartItem cartItem: cart.getItems())
            if (cartItem.getProduct().getId() == id_product && quantity > 0){
                cartItem.setQuantity(quantity);
                break;
            }
        
        request.getSession().setAttribute("cart", cart);
    }
    void doDelete(HttpServletRequest request, int id_product){
        Cart cart = (Cart) request.getSession().getAttribute("cart");
        for(CartItem cartItem: cart.getItems())
            if (cartItem.getProduct().getId() == id_product){
                cart.removeItem(id_product);
                break;
            }
        int itemCount = cart.getItemCount();
        request.getSession().setAttribute("itemCount", itemCount);
        request.getSession().setAttribute("cart", cart);
    }
}
