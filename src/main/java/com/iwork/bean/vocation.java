package andy.model;

public class vocation {
    private Integer vocationId;

    private Integer userId;

    private String startTime;

    private String endTime;

    private Integer subperior;

    private String vocatinonReason;

    private Integer status;

    public Integer getVocationId() {
        return vocationId;
    }

    public void setVocationId(Integer vocationId) {
        this.vocationId = vocationId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime == null ? null : startTime.trim();
    }

    public String getEndTime() {
        return endTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime == null ? null : endTime.trim();
    }

    public Integer getSubperior() {
        return subperior;
    }

    public void setSubperior(Integer subperior) {
        this.subperior = subperior;
    }

    public String getVocatinonReason() {
        return vocatinonReason;
    }

    public void setVocatinonReason(String vocatinonReason) {
        this.vocatinonReason = vocatinonReason == null ? null : vocatinonReason.trim();
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }
}