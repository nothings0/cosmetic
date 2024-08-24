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
import java.util.logging.Level;
import java.util.logging.Logger;
import ntbngoc.data.dao.Database;
import ntbngoc.data.model.Category;
import ntbngoc.data.model.Product;


public class ProductController extends HttpServlet {

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
            out.println("<title>Servlet ProductController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ProductController at " + request.getContextPath() + "</h1>");
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
        
        String productId = request.getParameter("id");
        
        if (productId == null) {
            listProducts(request, response);
        } else {
            try {
                int id = Integer.parseInt(productId);
                getProductDetails(request, response, id);
            } catch (NumberFormatException e) {
                response.sendRedirect("/cosmetic/store");
            }
        }
        
    }
    
    private void listProducts(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Category> listCategory = Database.getCategoryDAO().findAll();
        request.setAttribute("listCategory", listCategory);
        List<Product> listProduct = Database.getProductDao().findAll();
        request.setAttribute("listProduct", listProduct);
        response.sendRedirect("/cosmetic/store");
    }
    
    private void getProductDetails(HttpServletRequest request, HttpServletResponse response, int productId) throws ServletException, IOException {

        Product product = Database.getProductDao().find(productId);
        List<Product> relateProduct = Database.getProductDao().findByCategory(product.getId_category());
        Category category = Database.getCategoryDAO().find(product.getId_category());
        request.setAttribute("product", product);
        request.setAttribute("category", category);
        request.setAttribute("relateProduct", relateProduct);
        request.setAttribute("title", product.getName());
        request.getRequestDispatcher("./views/product.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        updateDelete(request, response);
    }

    void updateDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String action = request.getParameter("action");
        switch(action){
            case"create":
                doCreate(request, response);  break;
            case"delete":
                int id_product = Integer.parseInt(request.getParameter("id_product"));
                doDelete(request, response, id_product);
                break;
        }
        request.getRequestDispatcher("./views/store.jsp").include(request, response);
    }
    void doCreate(HttpServletRequest request, HttpServletResponse response){
        
        int idCategory = Integer.parseInt(request.getParameter("id_category"));
        String name = request.getParameter("productName");
        String image = request.getParameter("image");
        String description = request.getParameter("description");
        float discount = Float.parseFloat(request.getParameter("discount"));
        double price = Double.parseDouble(request.getParameter("price"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));

        // Tạo đối tượng Product
        Product product = new Product(name, image, description, discount, price, quantity, idCategory);
        
        boolean isInserted = Database.getProductDao().insert(product);

        System.out.println("thanh cong::" + isInserted);
        
        if (isInserted) {
            try {
                response.sendRedirect(request.getContextPath() + "/admin/store");
            } catch (IOException ex) {
                Logger.getLogger(ProductController.class.getName()).log(Level.SEVERE, null, ex);
            }
        } else {
            request.setAttribute("errorMessage", "Lỗi thêm sản phẩm, hãy thử lại");
        }
    }
    void doDelete(HttpServletRequest request, HttpServletResponse response, int id_product){
        boolean isDelete = Database.getProductDao().delete(id_product);
        try {
            if(isDelete) {
                response.sendRedirect(request.getContextPath() + "/admin/store");
            }
        } catch (IOException ex) {
            Logger.getLogger(ProductController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
