/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;
import bean.addfb;
import util.DBConnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ASUS
 */
public class feedbackController extends HttpServlet {

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
        List errorMsgs =  new LinkedList();
        try (PrintWriter out = response.getWriter()) {
            //retrieve form parameters
            
            String subject = request.getParameter("subject");
            String feedType = request.getParameter("feedType");
            String dateVisit = request.getParameter("dateVisit");
            String timeHonk = request.getParameter("timeHonk");
            String feedback = request.getParameter("feedback");
            
            addfb s = new addfb();
            s.setSubject(subject);
            s.setFeedType(feedType);
            s.setDateVisit(dateVisit);
            s.setTimeHonk(timeHonk);
            s.setFeedback(feedback);
            
            //Form verification
            if (subject == null || subject.trim().length() == 0) {
                errorMsgs.add("Please enter the subject.");
            }
            if(feedType == null || feedType.trim().length() == 0){
                errorMsgs.add("Please enter the feed type.");
            }
            if(dateVisit == null || dateVisit.trim().length() == 0){
                errorMsgs.add("Please enter the date visit.");
            }
            if(timeHonk == null || timeHonk.trim().length() == 0){
                errorMsgs.add("Please enter the time.");
            }
            if(feedback == null || feedback.trim().length() == 0){
                errorMsgs.add("Please enter the feedback.");
            }
            
            if (!errorMsgs.isEmpty()){
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
                
                PreparedStatement st1 = con.prepareStatement("select max(feedbackid)+1 from feedback");
                ResultSet rs = st1.executeQuery();
                String feedbackid = "";
                while(rs.next()){
                    feedbackid = rs.getString(1);
                }
                if (feedbackid == null)
                    feedbackid = "1";
                String sql = "insert into feedback (feedbackid,subject, feedType,dateVisit,timeHonk,feedback) values (?, ,?,?,?,?,?)";
                PreparedStatement st = con.prepareStatement(sql);
                
                st.setString(1, feedbackid);
                st.setString(2, subject);
                st.setString(3, feedType);
                st.setString(4, dateVisit);
                st.setString(5, timeHonk);
                st.setString(6, feedback);
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


