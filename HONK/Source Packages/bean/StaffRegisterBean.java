/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

/**
 *
 * @author Hp User
 */
public class StaffRegisterBean implements java.io.Serializable {

    String staffId;
    String staffPassword;
    int staffIc;
    String staffName;
    String staffAddress;
    int staffPhone;
    String staffEmail;
    String staffPosition;

    public StaffRegisterBean() {
    }

    public StaffRegisterBean(String staffId, String staffPassword, int staffIc, String staffName, String staffAddress, int staffPhone, String staffEmail, String staffPosition) {
        this.staffId = staffId;
        this.staffPassword = staffPassword;
        this.staffIc = staffIc;
        this.staffName = staffName;
        this.staffAddress = staffAddress;
        this.staffPhone = staffPhone;
        this.staffEmail = staffEmail;
        this.staffPosition = staffPosition;
    }

    public String getStaffId() {
        return staffId;
    }

    public void setStaffId(String staffId) {
        this.staffId = staffId;
    }

    public String getStaffPassword() {
        return staffPassword;
    }

    public void setStaffPassword(String staffPassword) {
        this.staffPassword = staffPassword;
    }

    public int getStaffIc() {
        return staffIc;
    }

    public void setStaffIc(int staffIc) {
        this.staffIc = staffIc;
    }

    public String getStaffName() {
        return staffName;
    }

    public void setStaffName(String staffName) {
        this.staffName = staffName;
    }

    public String getStaffAddress() {
        return staffAddress;
    }

    public void setStaffAddress(String staffAddress) {
        this.staffAddress = staffAddress;
    }

    public int getStaffPhone() {
        return staffPhone;
    }

    public void setStaffPhone(int staffPhone) {
        this.staffPhone = staffPhone;
    }

    public String getStaffEmail() {
        return staffEmail;
    }

    public void setStaffEmail(String staffEmail) {
        this.staffEmail = staffEmail;
    }

    public String getStaffPosition() {
        return staffPosition;
    }

    public void setStaffPosition(String staffPosition) {
        this.staffPosition = staffPosition;
    }
    
    

    public void setStaffIc(String staffIc) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public void setStaffPhone(String staffPhone) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
