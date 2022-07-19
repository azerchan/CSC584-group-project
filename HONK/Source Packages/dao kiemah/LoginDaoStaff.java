/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import bean.LoginBeanS;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import util.DBConnection;

/**
 *
 *
 */
public class LoginDaoStaff {
    public String authenticateUser (LoginBeanS loginBeans) {

         String staffID = loginBeans.getstaffID(); //Assign user entered values to temporary variables.
         String staffPassword = loginBeans.getstaffPassword();
 
         Connection con = null;
         Statement statement = null;
         ResultSet resultSet = null;
 
         String staffIdDB = "";
         String staffpasswordDB = "";
    
    try{
             con = DBConnection.createConnection(); //Fetch database connection object
             statement = con.createStatement(); 
             resultSet = statement.executeQuery("select staffID, staffPassword from staff"); //the table name is users and userName,password are columns. Fetching all the records and storing in a resultSet.
 
             while(resultSet.next()) // Until next row is present otherwise it return false
             {
              staffIdDB = resultSet.getString("staffID"); //fetch the values present in database
              staffpasswordDB = resultSet.getString("staffPassword");
 
               if(staffID.equals(staffIdDB) && staffPassword.equals(staffpasswordDB))
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
