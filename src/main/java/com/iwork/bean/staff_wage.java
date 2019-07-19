package andy.model;

public class staff_wage {
    private Integer wageid;

    private Integer userid;

    private Double prizeclass;

    private Double welfare;

    private Integer terms;

    private String publishtime;

    public Integer getWageid() {
        return wageid;
    }

    public void setWageid(Integer wageid) {
        this.wageid = wageid;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public Double getPrizeclass() {
        return prizeclass;
    }

    public void setPrizeclass(Double prizeclass) {
        this.prizeclass = prizeclass;
    }

    public Double getWelfare() {
        return welfare;
    }

    public void setWelfare(Double welfare) {
        this.welfare = welfare;
    }

    public Integer getTerms() {
        return terms;
    }

    public void setTerms(Integer terms) {
        this.terms = terms;
    }

    public String getPublishtime() {
        return publishtime;
    }

    public void setPublishtime(String publishtime) {
        this.publishtime = publishtime == null ? null : publishtime.trim();
    }
}