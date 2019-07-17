package com.iwork.bean;

import java.util.Date;

public class Absence {
    private Integer absenceId;

    private Integer absenceUserId;

    private Date absenceTime;

    private Integer absenceTimeQuantum;

    private String lateTime;

    private Integer absenceType;

    public Integer getAbsenceId() {
        return absenceId;
    }

    public void setAbsenceId(Integer absenceId) {
        this.absenceId = absenceId;
    }

    public Integer getAbsenceUserId() {
        return absenceUserId;
    }

    public void setAbsenceUserId(Integer absenceUserId) {
        this.absenceUserId = absenceUserId;
    }

    public Date getAbsenceTime() {
        return absenceTime;
    }

    public void setAbsenceTime(Date absenceTime) {
        this.absenceTime = absenceTime;
    }

    public Integer getAbsenceTimeQuantum() {
        return absenceTimeQuantum;
    }

    public void setAbsenceTimeQuantum(Integer absenceTimeQuantum) {
        this.absenceTimeQuantum = absenceTimeQuantum;
    }

    public String getLateTime() {
        return lateTime;
    }

    public void setLateTime(String lateTime) {
        this.lateTime = lateTime == null ? null : lateTime.trim();
    }

    public Integer getAbsenceType() {
        return absenceType;
    }

    public void setAbsenceType(Integer absenceType) {
        this.absenceType = absenceType;
    }
}