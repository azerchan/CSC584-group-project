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
public class Feedback implements java.io.Serializable {
    String feedbackId;
    String custId;
    String subject;
    String type;
    String visitDetail;
    String dateIssued;
    String detail;

    public Feedback() {
    }

    public String getFeedbackId() {
        return feedbackId;
    }

    public String getCustId() {
        return custId;
    }

    public String getSubject() {
        return subject;
    }

    public String getType() {
        return type;
    }

    public String getVisitDetail() {
        return visitDetail;
    }

    public String getDateIssued() {
        return dateIssued;
    }

    public String getDetail() {
        return detail;
    }

    public void setFeedbackId(String feedbackId) {
        this.feedbackId = feedbackId;
    }

    public void setCustId(String custId) {
        this.custId = custId;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public void setType(String type) {
        this.type = type;
    }

    public void setVisitDetail(String visitDetail) {
        this.visitDetail = visitDetail;
    }

    public void setDateIssued(String dateIssued) {
        this.dateIssued = dateIssued;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }
    
}

