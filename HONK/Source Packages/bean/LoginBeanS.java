/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package bean;

/**
 *
 * 
 */
public class LoginBeanS implements java.io.Serializable
{
     private String staffID;
     private String staffPassword;

    public LoginBeanS(String staffID, String staffPassword) {
        this.staffID = staffID;
        this.staffPassword = staffPassword;
    }
    public LoginBeanS(){
        
    }
 
    public String getstaffID() {
        return staffID;
     }
    public void setstaffID(String staffID) {
        this.staffID = staffID;
     }
     public String getstaffPassword() {
        return staffPassword;
     }
     public void setstaffPassword(String CustPassword) {
        this.staffPassword = staffPassword;
     }
}
