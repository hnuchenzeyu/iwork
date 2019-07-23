package com.iwork.view;

import com.iwork.bean.Meeting;
import com.iwork.bean.User;

public class meetingView {
    private Meeting meeting;
    private User user;

    public Meeting getMeeting() {
        return meeting;
    }

    public void setMeeting(Meeting meeting) {
        this.meeting = meeting;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @Override
    public String toString() {
        return "meetingView{" +
                "meeting=" + meeting +
                ", user=" + user +
                '}';
    }
}
