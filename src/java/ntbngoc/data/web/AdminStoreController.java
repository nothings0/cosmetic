package ntbngoc.data.web;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;
import ntbngoc.data.dao.Database;
import ntbngoc.data.model.Category;
import ntbngoc.data.model.Product;

/**
 *
 * @author pv
 */
public class AdminStoreController extends HttpServlet {
    private static final int PRODUCTS_PER_PAGE = 10;
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
            out.println("<title>Servlet AdminStoreController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AdminStoreController at " + request.getContextPath() + "</h1>");
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
        
        int page = 1;
        if (request.getParameter("page") != null) {
            page = Integer.parseInt(request.getParameter("page"));
        }

        int offset = (page - 1) * PRODUCTS_PER_PAGE;

        List<Product> products = Database.getProductDao().getProducts(offset, PRODUCTS_PER_PAGE);

        request.setAttribute("products", products);
        request.setAttribute("currentPage", page);

        // Tổng số trang dựa trên tổng số sản phẩm
        int totalProducts = Database.getProductDao().getTotalProducts();
        int totalPages = (int) Math.ceil(totalProducts / (double) PRODUCTS_PER_PAGE);
        request.setAttribute("totalPages", totalPages);
        List<Category> category = Database.getCategoryDAO().findAll();
        request.setAttribute("category", category);
        request.setAttribute("title", "List Product");
        request.getRequestDispatcher("../views/admin-store.jsp").include(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
