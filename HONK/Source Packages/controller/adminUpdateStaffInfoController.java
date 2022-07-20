/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package person.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.util.*;
import javax.servlet.*;
import person.bean.Staff;
import person.util.DBConnection;

/**
 *
 * @author USER
 */
public class adminUpdateStaffInfoController extends HttpServlet {

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
        List errorMsgs = new LinkedList();
        try (PrintWriter out = response.getWriter()) {
            //retrieve form parameters

            // ------ STAFF -------
            String StaffID = request.getParameter("StaffID");
            // String StaffPassword = request.getParameter("StaffPassword");
            String StaffIC = request.getParameter("StaffIC");
            String StaffName = request.getParameter("StaffName");
            String Address = request.getParameter("Address");
            String PhoneNo = request.getParameter("PhoneNo");
            String Email = request.getParameter("Email");
            String StaffPosition = request.getParameter("StaffPosition");

            

            Staff s = new Staff();
            s.setStaffID(StaffID);
            // s.setStaffPassword(StaffPassword);
            s.setStaffIC(StaffIC);
            s.setStaffName(StaffName);
            s.setAddress(Address);
            s.setPhoneNo(PhoneNo);
            s.setEmail(Email);
            s.setStaffPosition(StaffPosition);

            //Form verification
            if (StaffID == null || StaffID.trim().length() == 0) {
                errorMsgs.add("Please enter the staff ID.");
            }

            if (StaffIC == null || StaffIC.trim().length() == 0) {
                errorMsgs.add("Please enter the staff IC Number.");
            }

            if (StaffName == null || StaffName.trim().length() == 0) {
                errorMsgs.add("Please enter the staff name.");
            }

            if (Address == null || Address.trim().length() == 0) {
                errorMsgs.add("Please enter the staff address.");
            }

            if (PhoneNo == null || PhoneNo.trim().length() == 0) {
                errorMsgs.add("Please enter the staff phone number.");
            }

            if (Email == null || Email.trim().length() == 0) {
                errorMsgs.add("Please enter the staff email.");
            }

            if (StaffPosition == null || StaffPosition.trim().length() == 0) {
                errorMsgs.add("Please enter the staff position.");
            }

            if (!errorMsgs.isEmpty()) {
                request.setAttribute("errorMsgs", errorMsgs);
                RequestDispatcher view = request.getRequestDispatcher("error.jsp");
                view.forward(request, response);
                return;
            }

            Connection con = null;
            Statement statement = null;
            ResultSet resultSet = null;

            try {
                con = DBConnection.createConnection();

                /* PreparedStatement st1 = con.prepareStatement("select max(StringPassword)+1 from staff");      // sus line
                ResultSet rs = st1.executeQuery();
                String staffpw = "";
                while (rs.next()) {
                    staffpw = rs.getString(1);
                }
                if (staffpw == null) {
                    staffpw = "1";
                }
                // int staffpw = Integer.parseInt(staffpw1); */
                String sql = "insert into staff (StaffID,StaffIC,StaffName,Address,PhoneNo,Email,StaffPosition) values (?,?,?,?,?,?,?)";
                PreparedStatement st = con.prepareStatement(sql);

                st.setString(1, StaffID);
                // st.setString(2, staffpw);       // is it hidden?
                st.setString(3, StaffIC);
                st.setString(4, StaffName);
                st.setString(5, Address);
                st.setString(6, PhoneNo);
                st.setString(7, Email);
                st.setString(8, StaffPosition);
                st.executeUpdate();

                st.close();
                con.close();

                //dispatch to success view
                RequestDispatcher view = request.getRequestDispatcher("success.jsp");
                view.forward(request, response);
            } catch (SQLException e) {
                e.printStackTrace();
                errorMsgs.add("An unexpected error: " + e.getMessage());
                request.setAttribute("errorMsgs", errorMsgs);
                RequestDispatcher view = request.getRequestDispatcher("error.jsp");
                view.forward(request, response);
            } catch (RuntimeException e) {
                errorMsgs.add("An unexpected error: " + e.getMessage());
                request.setAttribute("errorMsgs", errorMsgs);
                RequestDispatcher view = request.getRequestDispatcher("error.jsp");
                view.forward(request, response);
            }

            
        }

    }

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
