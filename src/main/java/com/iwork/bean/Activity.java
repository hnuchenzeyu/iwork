package com.iwork.bean;

import java.util.Date;

public class Activity {
    private Integer activityId;

    private Integer activityCreateUserId;

    private Date activityCreateTime;

    private Integer activityType;

    private String activityTitle;//添加一个标题

    private String activityContext;

    private User user; //一对多映射

    public Integer getActivityId() {
        return activityId;
    }

    public void setActivityId(Integer activityId) {
        this.activityId = activityId;
    }

    public Integer getActivityCreateUserId() {
        return activityCreateUserId;
    }

    public void setActivityCreateUserId(Integer activityCreateUserId) {
        this.activityCreateUserId = activityCreateUserId;
    }

    public Date getActivityCreateTime() {
        return activityCreateTime;
    }

    public void setActivityCreateTime(Date activityCreateTime) {
        this.activityCreateTime = activityCreateTime;
    }

    public Integer getActivityType() {
        return activityType;
    }

    public void setActivityType(Integer activityType) {
        this.activityType = activityType;
    }

    public String getActivityTitle() {
        return activityTitle;
    }

    public void setActivityTitle(String activityTitle) {
        this.activityTitle = activityTitle;
    }

    public String getActivityContext() {
        return activityContext;
    }

    public void setActivityContext(String activityContext) {
        this.activityContext = activityContext == null ? null : activityContext.trim();
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}