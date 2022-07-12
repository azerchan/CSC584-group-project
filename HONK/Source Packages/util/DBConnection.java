/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author User
 */
public class DBConnection {
    public static Connection createConnection() {
        Connection con = null;
        String url = "jdbc:derby://localhost:1527/HONK;creates=true";
        String username = "honk";
        String password = "honk";
        
        try{
            try{
                Class.forName("com.apache.derby.jdbc.ClientDriver");
            }
            catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
            con = DriverManager.getConnection(url, username, password);
            System.out.println("Printing Connection object " +con);
        } 
        catch (Exception e){
            
        }
        return con;
    }
}
