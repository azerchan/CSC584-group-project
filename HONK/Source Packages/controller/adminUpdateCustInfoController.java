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
import person.bean.Customer;
import person.util.DBConnection;
/**
 *
 * @author USER
 */
public class adminUpdateCustInfoController extends HttpServlet {
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        List errorMsgs =  new LinkedList();
        try (PrintWriter out = response.getWriter()) {
            //retrieve form parameters
            // ------ CUSTOMER -------
            String CustID = request.getParameter("CustID");
            String CustPassword = request.getParameter("CustPassword");
            String CustIC = request.getParameter("CustIC");
            String CustName = request.getParameter("CustName");
            String Address = request.getParameter("Address");
            String PhoneNo = request.getParameter("PhoneNo");
            String Email = request.getParameter("Email");
            
            Customer c = new Customer();
            c.setCustID(CustID);
            c.setCustPassword(CustPassword);
            c.setCustIC(CustIC);
            c.setCustName(CustName);
            c.setAddress(Address);
            c.setPhoneNo(PhoneNo);
            c.setEmail(Email);
            
             //Form verification
            /* if (CustID == null || CustID.trim().length() == 0) {
                errorMsgs.add("Please enter the customer ID.");
            } */

            if (CustIC == null || CustIC.trim().length() == 0) {
                errorMsgs.add("Please enter the customer IC Number.");
            }

            if (CustName == null || CustName.trim().length() == 0) {
                errorMsgs.add("Please enter the customer name.");
            }

            if (Address == null || Address.trim().length() == 0) {
                errorMsgs.add("Please enter the customer address.");
            }

            if (PhoneNo == null || PhoneNo.trim().length() == 0) {
                errorMsgs.add("Please enter the customer phone number.");
            }

            if (Email == null || Email.trim().length() == 0) {
                errorMsgs.add("Please enter the customer email.");
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
            
            try
            {
                con = DBConnection.createConnection();
                
                /* PreparedStatement st1 = con.prepareStatement("select max(CUSTID)+1 from customer");
                ResultSet rs = st1.executeQuery();
                String id = "";
                while(rs.next()){
                    id = rs.getString(1);
                }
                if (id == null)
                    id = "1";
                int empId = Integer.parseInt(id); */
                
                String sql = "update customer set CustIC=?, CustPassword=?, CustName=?, Address=?, PhoneNo=?, Email=? where CustID=?";
                PreparedStatement st = con.prepareStatement(sql);
 

                st.setString(1, CustIC);
                st.setString(2, CustPassword);
                st.setString(3, CustName);
                st.setString(4, Address);
                st.setString(5, PhoneNo);
                st.setString(6, Email);
                // st.setString(7, CustID);
                st.executeUpdate();
                
                st.close();
                con.close();
                
                //dispatch to success view
                RequestDispatcher view = request.getRequestDispatcher("success.jsp");
                view.forward(request, response);
            }
             catch (SQLException e)
        {
            e.printStackTrace();
            errorMsgs.add("An unexpected error: " + e.getMessage());
            request.setAttribute("errorMsgs", errorMsgs);
            RequestDispatcher view = request.getRequestDispatcher("error.jsp");
            view.forward(request, response);
        }
        catch(RuntimeException e){
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
