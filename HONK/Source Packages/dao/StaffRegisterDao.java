/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;


import bean.StaffRegisterBean;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import util.DBConnection;

/**
 *
 * @author Hp User
 */
public class StaffRegisterDao {
    public String registerUser(StaffRegisterBean staffregisterBean){
        
        Connection conn = null;
        Statement statement = null;
        
        String staffId = staffregisterBean.getStaffId();
        String staffPassword = staffregisterBean.getStaffPassword();
        int staffIc = staffregisterBean.getStaffIc();
        String staffName = staffregisterBean.getStaffName();
        String staffAddress = staffregisterBean.getStaffAddress();
        int staffPhone = staffregisterBean.getStaffPhone();
        String staffEmail = staffregisterBean.getStaffEmail();
        String staffPosition = staffregisterBean.getStaffPosition();
        
        try{
            
            conn = DBConnection.createConnection();
            
            PreparedStatement pstmt = conn.prepareStatement("INSERT INTO STAFF(STAFFID,STAFFPASSWORD,STAFFIC,STAFFNAME,STAFFADDRESS,STAFFPHONE,STAFFEMAIL,STAFFPOSITION) VALUES (?,?,?,?,?,?,?,?)");
            pstmt.setString(1,staffId);
            pstmt.setString(2,staffPassword);
            pstmt.setInt(3,staffIc);
            pstmt.setString(4,staffName);
            pstmt.setString(5,staffAddress);
            pstmt.setInt(6,staffPhone);
            pstmt.setString(7,staffEmail);
            pstmt.setString(8,staffPosition);
            
            int i = pstmt.executeUpdate();
            if(i>0){
                return "SUCCESS";
            }
            else{
                return "FAIL";
            }
            
        
        }catch(SQLException e){
            return e.getMessage();
      
        }
    }
}

