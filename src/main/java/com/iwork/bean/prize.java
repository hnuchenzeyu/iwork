package andy.model;

public class prize {
    private Integer id;

    private Integer prizeclass;

    private String type;

    private Integer terms;

    private String publishtime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getPrizeclass() {
        return prizeclass;
    }

    public void setPrizeclass(Integer prizeclass) {
        this.prizeclass = prizeclass;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
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