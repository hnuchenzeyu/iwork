package com.iwork.bean;

import java.util.Date;

public class Excellent_Stafff {
    private Integer excellentStaffId;

    private Integer excellentUserId;

    private Date excellentSelectTime;

    private String excellrntReason;

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
}