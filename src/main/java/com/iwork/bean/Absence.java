package com.iwork.bean;

import java.util.Date;

public class Absence {
    private Integer absenceId;

    private Integer absenceUserId;

    private Date absenceTime;

    private String absenceTimeQuantum;

    private String lateTime;

    private String absenceType;

    private User user;

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

    public String getAbsenceTimeQuantum() {
        return absenceTimeQuantum;
    }

    public void setAbsenceTimeQuantum(String absenceTimeQuantum) {
        this.absenceTimeQuantum = absenceTimeQuantum;
    }

    public String getLateTime() {
        return lateTime;
    }

    public void setLateTime(String lateTime) {
        this.lateTime = lateTime == null ? null : lateTime.trim();
    }

    public String getAbsenceType() {
        return absenceType;
    }

    public void setAbsenceType(String absenceType) {
        this.absenceType = absenceType;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @Override
    public String toString() {
        return "Absence{" +
                "absenceId=" + absenceId +
                ", absenceUserId=" + absenceUserId +
                ", absenceTime=" + absenceTime +
                ", absenceTimeQuantum=" + absenceTimeQuantum +
                ", lateTime='" + lateTime + '\'' +
                ", absenceType=" + absenceType +
                '}';
    }
}