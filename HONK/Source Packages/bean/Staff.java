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
public class Staff implements java.io.Serializable {
    String staffId;
    String staffPassword;
    int staffIc;
    String staffName;
    String staffAddress;
    int staffPhone;
    String staffEmail;

    public Staff() {
    }

    public Staff(String staffId, String staffPassword, int staffIc, String staffName, String staffAddress, int staffPhone, String staffEmail) {
        this.staffId = staffId;
        this.staffPassword = staffPassword;
        this.staffIc = staffIc;
        this.staffName = staffName;
        this.staffAddress = staffAddress;
        this.staffPhone = staffPhone;
        this.staffEmail = staffEmail;
    }

    public String getStaffId() {
        return staffId;
    }

    public String getStaffPassword() {
        return staffPassword;
    }

    public int getStaffIc() {
        return staffIc;
    }

    public String getStaffName() {
        return staffName;
    }

    public String getStaffAddress() {
        return staffAddress;
    }

    public int getStaffPhone() {
        return staffPhone;
    }

    public String getStaffEmail() {
        return staffEmail;
    }

    public void setStaffId(String staffId) {
        this.staffId = staffId;
    }

    public void setStaffPassword(String staffPassword) {
        this.staffPassword = staffPassword;
    }

    public void setStaffIc(int staffIc) {
        this.staffIc = staffIc;
    }

    public void setStaffName(String staffName) {
        this.staffName = staffName;
    }

    public void setStaffAddress(String staffAddress) {
        this.staffAddress = staffAddress;
    }

    public void setStaffPhone(int staffPhone) {
        this.staffPhone = staffPhone;
    }

    public void setStaffEmail(String staffEmail) {
        this.staffEmail = staffEmail;
    }
    
}

