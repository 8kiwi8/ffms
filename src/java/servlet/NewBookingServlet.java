/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import business.dao.BookingDAO;
import business.data.Booking;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author kingw
 */
@WebServlet(name = "NewBookingServlet", urlPatterns = {"/NewBookingServlet"})
public class NewBookingServlet extends HttpServlet {

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
            String date = request.getParameter("selectedDate");
            String spacetime = request.getParameter("selectedTime");
            DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
            Date theDate = format.parse(date);
            Booking booking = new Booking();
            booking.setDate(theDate);
            String[] parts = spacetime.split("-");
            booking.setSid(Long.parseLong(parts[0]));
            booking.setTid(Integer.parseInt(parts[1]));
            booking.setRemark("Test");
            booking.setPrice(10.11);
            booking.setUid((long) request.getSession().getAttribute("uid"));
            booking.setStart(new Date());
            booking.setEnd(new Date());
            booking.setStatus("Pending");
            BookingDAO bookingDAO = new BookingDAO();
            bookingDAO.newBooking(booking);
            request.getSession().setAttribute("message", "You have successfully booked the timeslot");
            response.sendRedirect(request.getHeader("Referer"));
        } catch (ParseException ex) {
            Logger.getLogger(NewBookingServlet.class.getName()).log(Level.SEVERE, null, ex);
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
