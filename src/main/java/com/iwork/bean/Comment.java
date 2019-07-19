package com.iwork.bean;

import java.util.Date;

public class Comment {
    private int commentID;
    private String content;
    private int userID;
    private int activityID;
    private Date commentDate;
    private User user;

    public int getCommentID() {
        return commentID;
    }

    public void setCommentID(int commentID) {
        this.commentID = commentID;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public int getActivityID() {
        return activityID;
    }

    public void setActivityID(int activityID) {
        this.activityID = activityID;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Date getCommentDate() {
        return commentDate;
    }

    public void setCommentDate(Date commentDate) {
        this.commentDate = commentDate;
    }

    @Override
    public String toString() {
        return "Comment{" +
                "commentID=" + commentID +
                ", content='" + content + '\'' +
                ", userID=" + userID +
                ", activityID=" + activityID +
                ", commentDate=" + commentDate +
                ", user=" + user +
                '}';
    }
}
