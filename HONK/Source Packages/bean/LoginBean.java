/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package bean;

/**
 *
 * 
 */
public class LoginBean implements java.io.Serializable
{
     private String CustID;
     private String CustPassword;

    public LoginBean(String CustID, String CustPassword) {
        this.CustID = CustID;
        this.CustPassword = CustPassword;
    }
 
    public LoginBean()
    {
        
    }
    public String getCustID() {
        return CustID;
     }
    public void setCustID(String CustID) {
        this.CustID = CustID;
     }
     public String getCustPassword() {
        return CustPassword;
     }
     public void setPassword(String CustPassword) {
        this.CustPassword = CustPassword;
     }
}
