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
public class CustRegisterBean implements java.io.Serializable {

    String custId;
    String custPassword;
    int custIc;
    String custName;
    String custAddress;
    int custPhone;
    String custEmail;

    public CustRegisterBean() {
    }

    public CustRegisterBean(String custId, String custPassword, int custIc, String custName, String custAddress, int custPhone, String custEmail) {
        this.custId = custId;
        this.custPassword = custPassword;
        this.custIc = custIc;
        this.custName = custName;
        this.custAddress = custAddress;
        this.custPhone = custPhone;
        this.custEmail = custEmail;
    }

    public String getCustId() {
        return custId;
    }

    public void setCustId(String custId) {
        this.custId = custId;
    }

    public String getCustPassword() {
        return custPassword;
    }

    public void setCustPassword(String custPassword) {
        this.custPassword = custPassword;
    }

    public int getCustIc() {
        return custIc;
    }

    public void setCustIc(int custIc) {
        this.custIc = custIc;
    }

    public String getCustName() {
        return custName;
    }

    public void setCustName(String custName) {
        this.custName = custName;
    }

    public String getCustAddress() {
        return custAddress;
    }

    public void setCustAddress(String custAddress) {
        this.custAddress = custAddress;
    }

    public int getCustPhone() {
        return custPhone;
    }

    public void setCustPhone(int custPhone) {
        this.custPhone = custPhone;
    }

    public String getCustEmail() {
        return custEmail;
    }

    public void setCustEmail(String custEmail) {
        this.custEmail = custEmail;
    }

    public void setCustIc(String custIc) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public void setCustPhone(String custPhone) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
