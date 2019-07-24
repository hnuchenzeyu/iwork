package com.iwork.bean;

import java.util.Date;

public class Meeting {
    private Integer meetingId;

    private Integer meetingPublishUser;

    private Date meetingPublishTime;

    private String meetingStart;

    private String meetingEnd;

    private String meetAddress;

    private String meetContext;

    private User user;

    public Integer getMeetingId() {
        return meetingId;
    }

    public void setMeetingId(Integer meetingId) {
        this.meetingId = meetingId;
    }

    public Integer getMeetingPublishUser() {
        return meetingPublishUser;
    }

    public void setMeetingPublishUser(Integer meetingPublishUser) {
        this.meetingPublishUser = meetingPublishUser;
    }

    public Date getMeetingPublishTime() {
        return meetingPublishTime;
    }

    public void setMeetingPublishTime(Date meetingPublishTime) {
        this.meetingPublishTime = meetingPublishTime;
    }

    public String getMeetingStart() {
        return meetingStart;
    }

    public void setMeetingStart(String meetingStart) {
        this.meetingStart = meetingStart == null ? null : meetingStart.trim();
    }

    public String getMeetingEnd() {
        return meetingEnd;
    }

    public void setMeetingEnd(String meetingEnd) {
        this.meetingEnd = meetingEnd == null ? null : meetingEnd.trim();
    }

    public String getMeetAddress() {
        return meetAddress;
    }

    public void setMeetAddress(String meetAddress) {
        this.meetAddress = meetAddress == null ? null : meetAddress.trim();
    }

    public String getMeetContext() {
        return meetContext;
    }

    public void setMeetContext(String meetContext) {
        this.meetContext = meetContext == null ? null : meetContext.trim();
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @Override
    public String toString() {
        return "Meeting{" +
                "meetingId=" + meetingId +
                ", meetingPublishUser=" + meetingPublishUser +
                ", meetingPublishTime=" + meetingPublishTime +
                ", meetingStart='" + meetingStart + '\'' +
                ", meetingEnd='" + meetingEnd + '\'' +
                ", meetAddress='" + meetAddress + '\'' +
                ", meetContext='" + meetContext + '\'' +
                ", user=" + user +
                '}';
    }
}