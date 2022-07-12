/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;


import bean.Staff;
import java.sql.*;
import util.DBConnection;

/**
 *
 * @author User
 */
public class LoginDaoStaff {
    public String authenticateUser(Staff staff){
        
        String username = staff.getStaffId();
        String password = staff.getStaffPassword();
        
        Connection conn = null;
        Statement statement = null;
        ResultSet rs = null;
        
        String usernameDB="";
        String passwordDB="";
        
        try{
            conn = DBConnection.createConnection();
            statement = conn.createStatement();
            rs= statement.executeQuery("select USERNAME,PASSWORD from users");
            
            while(rs.next()){
                usernameDB = rs.getString("StaffID");
                passwordDB = rs.getString("StaffPassword");
                
                if(username.equals(usernameDB) && password.equals(passwordDB)){
                    return "SUCCESS";
                }
            }
        }
        catch(SQLException e){
            e.printStackTrace();
        }
        return "invalid user credential";
    }
}
