package cn.eight.employservice.pojo;

import java.util.Date;

/**
 * @author wu
 * @create 2020-03-17
 */
public class Staffexperience {
    private int wid;
    private String workplace;
    private String type;
    private String duty;
    private Date worktime;

    public Staffexperience() {
    }

    public Staffexperience(int wid, String workplace, String type, String duty, Date worktime) {
        this.wid = wid;
        this.workplace = workplace;
        this.type = type;
        this.duty = duty;
        this.worktime = worktime;
    }

    public int getWid() {
        return wid;
    }

    public void setWid(int wid) {
        this.wid = wid;
    }

    public String getWorkplace() {
        return workplace;
    }

    public void setWorkplace(String workplace) {
        this.workplace = workplace;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getDuty() {
        return duty;
    }

    public void setDuty(String duty) {
        this.duty = duty;
    }

    public Date getWorktime() {
        return worktime;
    }

    public void setWorktime(Date worktime) {
        this.worktime = worktime;
    }
}
