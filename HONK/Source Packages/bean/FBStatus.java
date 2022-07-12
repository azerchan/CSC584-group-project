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
public class FBStatus implements java.io.Serializable {
    String feedbackId;
    String custId;
    String staffId;
    String feedbackStatus;

    public FBStatus() {
    }

    public FBStatus(String feedbackId, String custId, String staffId, String feedbackStatus) {
        this.feedbackId = feedbackId;
        this.custId = custId;
        this.staffId = staffId;
        this.feedbackStatus = feedbackStatus;
    }

    public String getFeedbackId() {
        return feedbackId;
    }

    public String getCustId() {
        return custId;
    }

    public String getStaffId() {
        return staffId;
    }

    public String getFeedbackStatus() {
        return feedbackStatus;
    }

    public void setFeedbackId(String feedbackId) {
        this.feedbackId = feedbackId;
    }

    public void setCustId(String custId) {
        this.custId = custId;
    }

    public void setStaffId(String staffId) {
        this.staffId = staffId;
    }

    public void setFeedbackStatus(String feedbackStatus) {
        this.feedbackStatus = feedbackStatus;
    }
    
}
