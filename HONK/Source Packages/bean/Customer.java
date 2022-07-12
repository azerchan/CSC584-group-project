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
public class Customer implements java.io.Serializable {
    String custId;
    String custPassword;
    int custIc;
    String custName;
    String custAddress;
    int custPhone;
    String custEmail;

    public Customer() {
    }

    public Customer(String custId, String custPassword, int custIc, String custName, String custAddress, int custPhone, String custEmail) {
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

    public String getCustPassword() {
        return custPassword;
    }

    public int getCustIc() {
        return custIc;
    }

    public String getCustName() {
        return custName;
    }

    public String getCustAddress() {
        return custAddress;
    }

    public int getCustPhone() {
        return custPhone;
    }

    public String getCustEmail() {
        return custEmail;
    }

    public void setCustId(String custId) {
        this.custId = custId;
    }

    public void setCustPassword(String custPassword) {
        this.custPassword = custPassword;
    }

    public void setCustIc(int custIc) {
        this.custIc = custIc;
    }

    public void setCustName(String custName) {
        this.custName = custName;
    }

    public void setCustAddress(String custAddress) {
        this.custAddress = custAddress;
    }

    public void setCustPhone(int custPhone) {
        this.custPhone = custPhone;
    }

    public void setCustEmail(String custEmail) {
        this.custEmail = custEmail;
    }

}
