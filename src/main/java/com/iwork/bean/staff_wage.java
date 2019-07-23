package com.iwork.bean;

public class staff_wage {
    private Integer wageId;

    private Integer userId;

    private Integer prizeId;

    private User user;

    private prize prize;

    public Integer getWageId() {
        return wageId;
    }

    public void setWageId(Integer wageId) {
        this.wageId = wageId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getPrizeId() {
        return prizeId;
    }

    public void setPrizeId(Integer prizeId) {
        this.prizeId = prizeId;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public com.iwork.bean.prize getPrize() {
        return prize;
    }

    public void setPrize(com.iwork.bean.prize prize) {
        this.prize = prize;
    }
}