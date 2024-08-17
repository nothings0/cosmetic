/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package ntbngoc.data.web;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import ntbngoc.data.dao.Database;
import ntbngoc.data.model.User;
import ntbngoc.utils.API;

/**
 *
 * @author Admin
 */
public class RegisterServlet extends HttpServlet {

        
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("title", "Register Page");
        request.getRequestDispatcher("./views/register.jsp").include(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String err_email="", err_repassword="";
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String repassword = request.getParameter("repassword");
            String Email_Regex = "^[\\w-\\+]+(\\.[\\w]+)*@[\\w-]+(\\.[\\w]+)*(\\.[a-z]{2,})$";

            boolean err = false;
            if(!email.matches(Email_Regex)){
                err_email="Email is invalid!";
                request.getSession().setAttribute("err_email", err_email);
                err=true;
            }else{
                err_email="";
                request.getSession().removeAttribute("err_email");
            }

            if(!repassword.matches(password)){
                err_repassword="Not match password!";
                request.getSession().setAttribute("err_repassword", err_repassword);
                err=true;
            }else{
                err_repassword="";
                request.getSession().removeAttribute("err_repassword");
            }

            if(err){
                response.sendRedirect("register");
            }else{
                if(Database.getUserDao().findUser(email)!=null){
                    request.getSession().setAttribute("exist_user", "User has existed in Database!");
                    response.sendRedirect("register");
                }else{
                    Database.getUserDao().insertUser(email, password);
                    User user = Database.getUserDao().findUser(email);
                    if(user != null) {
                        request.getSession().setAttribute("user", user);
                        request.getSession().removeAttribute("exist_user");
                        response.sendRedirect("home");
                    }
                }
            }
        } catch (IOException e) {
        }
    }
}