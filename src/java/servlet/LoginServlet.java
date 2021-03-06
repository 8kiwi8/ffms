/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import business.dao.UserDAO;
import business.data.User;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.jasypt.util.password.StrongPasswordEncryptor;

/**
 *
 * @author kingw
 */
@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession(true);
            
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            String username = request.getParameter("inputEmail");
            String password = request.getParameter("inputPassword");
            
            UserDAO userDAO = new UserDAO();
            
            User user = userDAO.getUser(username);
            
            String result = "";
            
            StrongPasswordEncryptor passwordEncryptor = new StrongPasswordEncryptor();
            
            if(user == null || !passwordEncryptor.checkPassword(password, user.getPassword())) 
            {            
                session.setAttribute("error", "Wrong username or password");
                response.sendRedirect("index.jsp");     
            } 
            else if(!user.getStatus().equals("active")) 
            { 
                session.setAttribute("error", "You had been banned, Please contact the administrator.");
                response.sendRedirect("index.jsp");
            } 
            else 
            {
                session.setAttribute("uid", user.getUid());
                session.setAttribute("name", user.getName());
                session.setAttribute("type", user.getType());
                session.setAttribute("user", user);
                session.setMaxInactiveInterval(-1);
                String type = (String) session.getAttribute("type");
                if(type.equalsIgnoreCase("admin"))
                {
                    response.sendRedirect("adminIndex.jsp");
                }
                else
                {
                    response.sendRedirect("index.jsp");        
                }
                
            }
            
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
        processRequest(request, response);
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
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
