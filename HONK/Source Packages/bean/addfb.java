/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

/**
 *
 * @author ASUS
 */
public class addfb implements java.io.Serializable {
    public String feedbackid;
    public String subject;
    public String feedType;
    public String dateVisit;
    public String timeHonk;
    public String feedback;

    public addfb(String id,String subject, String feedType, String dateVisit, String timeHonk, String feedback) {
        this.feedbackid=feedbackid;
        this.subject = subject;
        this.feedType = feedType;
        this.dateVisit = dateVisit;
        this.timeHonk = timeHonk;
        this.feedback = feedback;
    }

    public addfb()
    {
        
    }

    public String getFeedbackid() {
        return feedbackid;
    }

    public void setFeedbackid(String feedbackid) {
        this.feedbackid = feedbackid;
    }
    
    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getFeedType() {
        return feedType;
    }

    public void setFeedType(String feedType) {
        this.feedType = feedType;
    }

    public String getDateVisit() {
        return dateVisit;
    }

    public void setDateVisit(String dateVisit) {
        this.dateVisit = dateVisit;
    }

    public String getTimeHonk() {
        return timeHonk;
    }

    public void setTimeHonk(String timeHonk) {
        this.timeHonk = timeHonk;
    }

    public String getFeedback() {
        return feedback;
    }

    public void setFeedback(String feedback) {
        this.feedback = feedback;
    }

    
    
    
    
}
