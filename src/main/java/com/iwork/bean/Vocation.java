package com.iwork.bean;

public class Vocation {
    private Integer vocationId;

    private Integer userId;

    private String startTime;

    private String endTime;

    private Integer subperior;

    private String vocatinonReason;

    private Integer status;

    private String username;

    private String subperiorname;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getSubperiorname() {
        return subperiorname;
    }

    public void setSubperiorname(String subperiorname) {
        this.subperiorname = subperiorname;
    }



    public Integer getVocationId() {
        return vocationId;
    }

    public void setVocationId(Integer vocationId) {
        this.vocationId = vocationId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime == null ? null : startTime.trim();
    }

    public String getEndTime() {
        return endTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime == null ? null : endTime.trim();
    }

    public Integer getSubperior() {
        return subperior;
    }

    public void setSubperior(Integer subperior) {
        this.subperior = subperior;
    }

    public String getVocatinonReason() {
        return vocatinonReason;
    }

    public void setVocatinonReason(String vocatinonReason) {
        this.vocatinonReason = vocatinonReason == null ? null : vocatinonReason.trim();
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "userid:"+userId+"startTime:"+startTime+"endtime:"+endTime+"subperior:"+subperior+"resaon:"+vocatinonReason;
    }
}