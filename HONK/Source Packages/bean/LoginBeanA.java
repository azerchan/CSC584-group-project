/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package bean;

/**
 *
 * 
 */
public class LoginBeanA implements java.io.Serializable
{
     private String adminID;
     private String adminPassword;

    public LoginBeanA(String adminID, String adminPassword) {
        this.adminID = adminID;
        this.adminPassword = adminPassword;
    }
    
    public LoginBeanA(){
        
    }
 
    public String getadminID() {
        return adminID;
     }
    public void setadminID(String adminID) {
        this.adminID = adminID;
     }
     public String getadminPassword() {
        return adminPassword;
     }
     public void setadminPassword(String adminPassword) {
        this.adminPassword = adminPassword;
     }
}
