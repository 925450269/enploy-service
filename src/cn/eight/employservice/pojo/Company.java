package cn.eight.employservice.pojo;


public class Company {
    private int cid;
    private String caccount;
    private String cname;
    private String shuoming;

    public Company() {
    }

    public Company(int cid, String caccount, String cname, String shuoming) {
        this.cid = cid;
        this.caccount = caccount;
        this.cname = cname;
        this.shuoming = shuoming;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public String getCaccount() {
        return caccount;
    }

    public void setCaccount(String caccount) {
        this.caccount = caccount;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public String getShuoming() {
        return shuoming;
    }

    public void setShuoming(String shuoming) {
        this.shuoming = shuoming;
    }
}
