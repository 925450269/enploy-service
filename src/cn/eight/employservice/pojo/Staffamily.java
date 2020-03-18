package cn.eight.employservice.pojo;


public class Staffamily {
    private  int wid;
    private  String relation;
    private  String fname;
    private  int fage;
    private  String phone;
    private  String workplace;

    public Staffamily() {
    }

    public Staffamily(int wid, String relation, String fname, int fage, String phone, String workplace) {
        this.wid = wid;
        this.relation = relation;
        this.fname = fname;
        this.fage = fage;
        this.phone = phone;
        this.workplace = workplace;
    }

    public int getWid() {
        return wid;
    }

    public void setWid(int wid) {
        this.wid = wid;
    }

    public String getRelation() {
        return relation;
    }

    public void setRelation(String relation) {
        this.relation = relation;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public int getFage() {
        return fage;
    }

    public void setFage(int fage) {
        this.fage = fage;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getWorkplace() {
        return workplace;
    }

    public void setWorkplace(String workplace) {
        this.workplace = workplace;
    }
}
