package com.iwork.view;

public class TodayAttendance {
    private Integer morning;
    private Integer afternoon;
    private Integer evening;
    public TodayAttendance(){
        this.morning=0;
        this.afternoon =0;
        this.evening=0;
    }

    public Integer getMorning() {
        return morning;
    }

    public void setMorning(Integer morning) {
        this.morning = morning;
    }

    public Integer getAfternoon() {
        return afternoon;
    }

    public void setAfternoon(Integer afternoon) {
        this.afternoon = afternoon;
    }

    public Integer getEvening() {
        return evening;
    }

    public void setEvening(Integer evening) {
        this.evening = evening;
    }
}
