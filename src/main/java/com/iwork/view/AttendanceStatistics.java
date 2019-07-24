package com.iwork.view;

import com.iwork.bean.User;

public class AttendanceStatistics {
    private User user;
    private Integer lateTimes;
    private Integer leaveTimes;
    private Integer businessTime;

    public AttendanceStatistics() {
        this.lateTimes = 0;
        this.leaveTimes = 0;
        this.businessTime = 0;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Integer getLateTimes() {
        return lateTimes;
    }

    public void setLateTimes(Integer lateTimes) {
        this.lateTimes = lateTimes;
    }

    public Integer getLeaveTimes() {
        return leaveTimes;
    }

    public void setLeaveTimes(Integer leaveTimes) {
        this.leaveTimes = leaveTimes;
    }

    public Integer getBusinessTime() {
        return businessTime;
    }

    public void setBusinessTime(Integer businessTime) {
        this.businessTime = businessTime;
    }

    @Override
    public String toString() {
        return "AttendanceStatistics{" +
//                "user=" + user +
                ", lateTimes=" + lateTimes +
                ", leaveTimes=" + leaveTimes +
                ", businessTime=" + businessTime +
                '}';
    }
}
