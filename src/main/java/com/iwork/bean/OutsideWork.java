package com.iwork.bean;

public class OutsideWork {
    private Integer workid;

    private String worktitle;

    private String workdescription;

    private String workmember;

    private String workstarttime;

    private String workendtime;

    private Integer workstatus;

    private Integer workprogress;

    public String[] getMemberlist() {
        return memberlist;
    }

    public void setMemberlist(String[] memberlist) {
        this.memberlist = memberlist;
    }

    private String  memberlist[];

    public Integer getWorkid() {
        return workid;
    }

    public void setWorkid(Integer workid) {
        this.workid = workid;
    }

    public String getWorktitle() {
        return worktitle;
    }

    public void setWorktitle(String worktitle) {
        this.worktitle = worktitle == null ? null : worktitle.trim();
    }

    public String getWorkdescription() {
        return workdescription;
    }

    public void setWorkdescription(String workdescription) {
        this.workdescription = workdescription == null ? null : workdescription.trim();
    }

    public String getWorkmember() {
        return workmember;
    }

    public void setWorkmember(String workmember) {
        this.workmember = workmember == null ? null : workmember.trim();
    }

    public String getWorkstarttime() {
        return workstarttime;
    }

    public void setWorkstarttime(String workstarttime) {
        this.workstarttime = workstarttime == null ? null : workstarttime.trim();
    }

    public String getWorkendtime() {
        return workendtime;
    }

    public void setWorkendtime(String workendtime) {
        this.workendtime = workendtime == null ? null : workendtime.trim();
    }

    public Integer getWorkstatus() {
        return workstatus;
    }

    public void setWorkstatus(Integer workstatus) {
        this.workstatus = workstatus;
    }

    public Integer getWorkprogress() {
        return workprogress;
    }

    public void setWorkprogress(Integer workprogress) {
        this.workprogress = workprogress;
    }
}