/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dispatcher;

import business.dao.BookingDAO;
import business.dao.SpaceDAO;
import business.dao.TimeDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author kingw
 */
@WebServlet(name = "NewBooking.jsp", urlPatterns = {"/NewBooking.jsp"})
public class NewBooking extends HttpServlet {

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
            RequestDispatcher rd = request.getRequestDispatcher("/booking/newBooking.jsp");
            //DAO is used to fetch data from database
            SpaceDAO spaceDAO = new SpaceDAO();
            TimeDAO timeDAO = new TimeDAO();
            BookingDAO bookingDAO = new BookingDAO();
            //Put the list of data as an attribute to be posted
            request.setAttribute("spaces", spaceDAO.getActiveSpace());
            request.setAttribute("times", timeDAO.getAllTime());
            
            Date date;
            if(request.getParameter("date")!= null && !request.getParameter("date").equals("")) {
                DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
                date = format.parse(request.getParameter("date"));
            } else {
                date = new Date();
            }
            System.out.print(date);
            request.setAttribute("bookings", bookingDAO.getBooking(date));
            
            //Post everything to the web page
            rd.forward(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(NewBooking.class.getName()).log(Level.SEVERE, null, ex);
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

