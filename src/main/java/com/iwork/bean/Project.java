package com.iwork.bean;

import java.util.Date;

public class Project {
    private Integer projectId;

    private Integer createUserId;

    private String projectTitle;

    private String projectStatus;

    private Date createTime;

    private Integer projectType;

    private String projectContext;

    private String projectProgress;

    private Integer projectReview;

    private String projectExam;

    private Integer projectBidding;

    private String bidingSummary;

    private Project_Type project_type;

   public Integer getProjectId() {
        return projectId;
    }

    public void setProjectId(Integer projectId) {
        this.projectId = projectId;
    }

    public Integer getCreateUserId() {
        return createUserId;
    }

    public void setCreateUserId(Integer createUserId) {
        this.createUserId = createUserId;
    }

    public String getProjectTitle() {
        return projectTitle;
    }

    public void setProjectTitle(String projectTitle) {
        this.projectTitle = projectTitle;
    }

    public String getProjectStatus() {
        return projectStatus;
    }

    public void setProjectStatus(String projectStatus) {
        this.projectStatus = projectStatus;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Integer getProjectType() {
        return projectType;
    }

    public void setProjectType(Integer projectType) {
        this.projectType = projectType;
    }

    public String getProjectContext() {
        return projectContext;
    }

    public void setProjectContext(String projectContext) {
        this.projectContext = projectContext == null ? null : projectContext.trim();
    }

    public String getProjectProgress() {
        return projectProgress;
    }

    public void setProjectProgress(String projectProgress) {
        this.projectProgress = projectProgress == null ? null : projectProgress.trim();
    }

    public Integer getProjectReview() {
        return projectReview;
    }

    public void setProjectReview(Integer projectReview) {
        this.projectReview = projectReview;
    }

    public String getProjectExam() {
        return projectExam;
    }

    public void setProjectExam(String projectExam) {
        this.projectExam = projectExam == null ? null : projectExam.trim();
    }

    public Integer getProjectBidding() {
        return projectBidding;
    }

    public void setProjectBidding(Integer projectBidding) {
        this.projectBidding = projectBidding;
    }

    public String getBidingSummary() {
        return bidingSummary;
    }

    public void setBidingSummary(String bidingSummary) {
        this.bidingSummary = bidingSummary == null ? null : bidingSummary.trim();
    }

    public Project_Type getProject_type() {
        return project_type;
    }

    public void setProject_type(Project_Type project_type) {
        this.project_type = project_type;
    }

    @Override
    public String toString() {
        return "Project{" +
                "projectId=" + projectId +
                ", createUserId=" + createUserId +
                ", projectTitle='" + projectTitle + '\'' +
                ", projectStatus='" + projectStatus + '\'' +
                ", createTime=" + createTime +
                ", projectType=" + projectType +
                ", projectContext='" + projectContext + '\'' +
                ", projectProgress='" + projectProgress + '\'' +
                ", projectReview=" + projectReview +
                ", projectExam='" + projectExam + '\'' +
                ", projectBidding=" + projectBidding +
                ", bidingSummary='" + bidingSummary + '\'' +
                ", project_type=" + project_type +
                '}';
    }
}