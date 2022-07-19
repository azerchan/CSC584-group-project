/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import bean.StaffRegisterBean;
import dao.StaffRegisterDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Hp User
 */
public class StaffRegisterServlet extends HttpServlet {

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
        /* TODO output your page here. You may use following sample code. 
        try (PrintWriter out = response.getWriter()) {
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet RegisterServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RegisterServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        } */
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
        
        PrintWriter out = response.getWriter();
        
        String staffId = request.getParameter("StaffId");
        String staffPassword = request.getParameter("StaffPassword");
        String staffIc = request.getParameter("StaffIc");
        String staffName = request.getParameter("StaffName");
        String staffAddress = request.getParameter("StaffAddress");
        String staffPhone = request.getParameter("StaffPhone");
        String staffEmail = request.getParameter("StaffEmail");
        String staffPosition = request.getParameter("StaffPosition");
        String staffconfirm = request.getParameter("confirm");
        
        
        StaffRegisterDao staffregisterDao = new StaffRegisterDao();
        StaffRegisterBean staffregisterBean = new StaffRegisterBean();
        
        staffregisterBean.setStaffId(staffId);
        staffregisterBean.setStaffPassword(staffPassword);
        staffregisterBean.setStaffIc(staffIc);
        staffregisterBean.setStaffName(staffName);
        staffregisterBean.setStaffAddress(staffAddress);
        staffregisterBean.setStaffPhone(staffPhone);
        staffregisterBean.setStaffEmail(staffEmail);
        staffregisterBean.setStaffPosition(staffPosition);
        
        String registration = staffregisterDao.registerUser(staffregisterBean);
        
        if(registration.equalsIgnoreCase("SUCCESS")){
            
            request.getRequestDispatcher("login.jsp").forward(request, response);
           
        }
        else{
            request.setAttribute("errMsg", registration);
            request.getRequestDispatcher("registration.jsp").forward(request, response);
        }
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
        
        PrintWriter out = response.getWriter();
        
        String staffId = request.getParameter("StaffId");
        String staffPassword = request.getParameter("StaffPassword");
        String staffIc = request.getParameter("StaffIc");
        String staffName = request.getParameter("StaffName");
        String staffAddress = request.getParameter("StaffAddress");
        String staffPhone = request.getParameter("StaffPhone");
        String staffEmail = request.getParameter("StaffEmail");
        String staffPosition = request.getParameter("StaffPosition");
        String staffconfirm = request.getParameter("confirm");
        
        
        StaffRegisterDao staffregisterDao = new StaffRegisterDao();
        StaffRegisterBean staffregisterBean = new StaffRegisterBean();
        
        staffregisterBean.setStaffId(staffId);
        staffregisterBean.setStaffPassword(staffPassword);
        staffregisterBean.setStaffIc(staffIc);
        staffregisterBean.setStaffName(staffName);
        staffregisterBean.setStaffAddress(staffAddress);
        staffregisterBean.setStaffPhone(staffPhone);
        staffregisterBean.setStaffEmail(staffEmail);
        staffregisterBean.setStaffPosition(staffPosition);
        
        String registration = staffregisterDao.registerUser(staffregisterBean);
        
        if(registration.equalsIgnoreCase("SUCCESS")){
            
            request.getRequestDispatcher("login.jsp").forward(request, response);
           
        }
        else{
            request.setAttribute("errMsg", registration);
            request.getRequestDispatcher("registration.jsp").forward(request, response);
        }
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
