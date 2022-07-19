/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import bean.LoginBeanA;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import util.DBConnection;

/**
 *
 *
 */
public class LoginDaoAdmin {
    public String authenticateUser (LoginBeanA loginBeana) {

         String adminID = loginBeana.getadminID(); //Assign user entered values to temporary variables.
         String adminPassword = loginBeana.getadminPassword();
 
         Connection con = null;
         Statement statement = null;
         ResultSet resultSet = null;
 
         String adminIdDB = "";
         String adminpasswordDB = "";
    
    try{
             con = DBConnection.createConnection(); //Fetch database connection object
             statement = con.createStatement(); 
             resultSet = statement.executeQuery("select adminID, adminPassword from admin"); //the table name is users and userName,password are columns. Fetching all the records and storing in a resultSet.
 
             while(resultSet.next()) // Until next row is present otherwise it return false
             {
              adminIdDB = resultSet.getString("adminID"); //fetch the values present in database
              adminpasswordDB = resultSet.getString("adminPassword");
 
               if(adminID.equals(adminIdDB) && adminPassword.equals(adminpasswordDB))
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
