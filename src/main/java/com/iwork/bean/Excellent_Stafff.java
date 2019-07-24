package com.iwork.bean;

import java.util.Date;

public class Excellent_Stafff {
    private Integer excellentStaffId;

    private Integer excellentUserId;

    private Date excellentSelectTime;

    private String excellrntReason;

    private User user;

    public Integer getExcellentStaffId() {
        return excellentStaffId;
    }

    public void setExcellentStaffId(Integer excellentStaffId) {
        this.excellentStaffId = excellentStaffId;
    }

    public Integer getExcellentUserId() {
        return excellentUserId;
    }

    public void setExcellentUserId(Integer excellentUserId) {
        this.excellentUserId = excellentUserId;
    }

    public Date getExcellentSelectTime() {
        return excellentSelectTime;
    }

    public void setExcellentSelectTime(Date excellentSelectTime) {
        this.excellentSelectTime = excellentSelectTime;
    }

    public String getExcellrntReason() {
        return excellrntReason;
    }

    public void setExcellrntReason(String excellrntReason) {
        this.excellrntReason = excellrntReason == null ? null : excellrntReason.trim();
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @Override
    public String toString() {
        return "Excellent_Stafff{" +
                "excellentStaffId=" + excellentStaffId +
                ", excellentUserId=" + excellentUserId +
                ", excellentSelectTime=" + excellentSelectTime +
                ", excellrntReason='" + excellrntReason + '\'' +
                '}';
    }
}