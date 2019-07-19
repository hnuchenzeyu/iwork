package com.iwork.bean;

import java.util.Date;
import java.util.List;

public class Activity {
    private Integer activityId;

    private Integer activityCreateUserId;

    private Date activityCreateTime;

    private Integer activityType;

    private String activityTitle;//添加一个标题

    private String activityContext;//内容

    private User user; //一对多映射：一个活动->一个用户；一个用户->多个活动

    private List<Comment> comments;// 一个活动->多跳评论；一条评论->一个活动

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

    public List<Comment> getComments() {
        return comments;
    }

    public void setComments(List<Comment> comments) {
        this.comments = comments;
    }
}