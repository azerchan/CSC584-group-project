/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

/**
 *
 * @author User
 */
public class Admin implements java.io.Serializable {
    String staffId;
    String staffPassword;

    public Admin() {
    }

    public String getStaffId() {
        return staffId;
    }

    public String getStaffPassword() {
        return staffPassword;
    }

    public void setStaffId(String staffId) {
        this.staffId = staffId;
    }

    public void setStaffPassword(String staffPassword) {
        this.staffPassword = staffPassword;
    }
    
}
