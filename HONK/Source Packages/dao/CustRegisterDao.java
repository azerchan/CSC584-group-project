/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import bean.CustRegisterBean;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import util.DBConnection;
/**
 *
 * @author Hp User
 */
public class CustRegisterDao {
    public String registerUser(CustRegisterBean custregisterBean){
        
        Connection conn = null;
        Statement statement = null;
        
        String custId = custregisterBean.getCustId();
        String custPassword = custregisterBean.getCustPassword();
        int custIc = custregisterBean.getCustIc();
        String custName = custregisterBean.getCustName();
        String custAddress = custregisterBean.getCustAddress();
        int custPhone = custregisterBean.getCustPhone();
        String custEmail = custregisterBean.getCustEmail();
        
        try{
            
            conn = DBConnection.createConnection();
            
            PreparedStatement pstmt = conn.prepareStatement("INSERT INTO CUSTOMER(CUSTID,CUSTPASSWORD,CUSTIC,CUSTNAME,CUSTADDRESS,CUSTPHONE,CUSTEMAIL) VALUES (?,?,?,?,?,?,?)");
            pstmt.setString(1,custId);
            pstmt.setString(2,custPassword);
            pstmt.setInt(3,custIc);
            pstmt.setString(4,custName);
            pstmt.setString(5,custAddress);
            pstmt.setInt(6,custPhone);
            pstmt.setString(7,custEmail);
            
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
    

