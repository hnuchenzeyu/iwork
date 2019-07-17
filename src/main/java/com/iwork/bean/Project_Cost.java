package com.iwork.bean;

import java.util.Date;

public class Project_Cost {
    private Integer projectAccountId;

    private Date projectCostTime;

    private Integer projectCostUser;

    private String projectCostAmount;

    private String projectCostContext;

    public Integer getProjectAccountId() {
        return projectAccountId;
    }

    public void setProjectAccountId(Integer projectAccountId) {
        this.projectAccountId = projectAccountId;
    }

    public Date getProjectCostTime() {
        return projectCostTime;
    }

    public void setProjectCostTime(Date projectCostTime) {
        this.projectCostTime = projectCostTime;
    }

    public Integer getProjectCostUser() {
        return projectCostUser;
    }

    public void setProjectCostUser(Integer projectCostUser) {
        this.projectCostUser = projectCostUser;
    }

    public String getProjectCostAmount() {
        return projectCostAmount;
    }

    public void setProjectCostAmount(String projectCostAmount) {
        this.projectCostAmount = projectCostAmount == null ? null : projectCostAmount.trim();
    }

    public String getProjectCostContext() {
        return projectCostContext;
    }

    public void setProjectCostContext(String projectCostContext) {
        this.projectCostContext = projectCostContext == null ? null : projectCostContext.trim();
    }
}