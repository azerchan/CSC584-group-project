/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import bean.LoginBean;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import util.DBConnection;

/**
 *
 *
 */
public class LoginDao {
    public String authenticateUser (LoginBean loginBean) {

         String CustID = loginBean.getCustID(); //Assign user entered values to temporary variables.
         String CustPassword = loginBean.getCustPassword();
 
         Connection con = null;
         Statement statement = null;
         ResultSet resultSet = null;
 
         String userNameDB = "";
         String passwordDB = "";
    
    try{
             con = DBConnection.createConnection(); //Fetch database connection object
             statement = con.createStatement(); 
             resultSet = statement.executeQuery("select CustID, CustPassword from HONK"); //the table name is users and userName,password are columns. Fetching all the records and storing in a resultSet.
 
             while(resultSet.next()) // Until next row is present otherwise it return false
             {
              userNameDB = resultSet.getString("CustID"); //fetch the values present in database
              passwordDB = resultSet.getString("CustPassword");
 
               if(CustID.equals(userNameDB) && CustPassword.equals(passwordDB))
               {
                  return "SUCCESS"; ////If the user entered values are already present in the database, which means user has already registered so return a SUCCESS message.
               }
             }
    }catch (SQLException e) {
        e.printStackTrace();
    }
    return "Invalid user credentials";
}    
}

