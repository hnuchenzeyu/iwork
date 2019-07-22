package com.iwork.bean;


public class Project_Cost {
    private Integer projectAccountId;

    private String projectCostTime;

    private Integer projectCostUser;

    private Double projectCostAmount;

    private String projectCostContext;

    private User user;

    public Integer getProjectAccountId() {
        return projectAccountId;
    }

    public void setProjectAccountId(Integer projectAccountId) {
        this.projectAccountId = projectAccountId;
    }

    public String getProjectCostTime() {
        return projectCostTime;
    }

    public void setProjectCostTime(String projectCostTime) {
        this.projectCostTime = projectCostTime;
    }

    public Integer getProjectCostUser() {
        return projectCostUser;
    }

    public void setProjectCostUser(Integer projectCostUser) {
        this.projectCostUser = projectCostUser;
    }

    public Double getProjectCostAmount() {
        return projectCostAmount;
    }

    public void setProjectCostAmount(Double projectCostAmount) {
        this.projectCostAmount = projectCostAmount;
    }

    public String getProjectCostContext() {
        return projectCostContext;
    }

    public void setProjectCostContext(String projectCostContext) {
        this.projectCostContext = projectCostContext;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}