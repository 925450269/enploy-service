package cn.eight.employservice.pojo;

import java.util.Date;

/**
 * @author wu
 * @create 2020-03-17
 */
public class Staffexperience {
    private int eid;
    private int wid;
    private String workplace;
    private String type;
    private String duty;
    private String worktime;

    public Staffexperience() {
    }

    public Staffexperience(int wid, String workplace, String type, String duty, String worktime) {
        this.wid = wid;
        this.workplace = workplace;
        this.type = type;
        this.duty = duty;
        this.worktime = worktime;
    }

    public Staffexperience(int eid, int wid, String workplace, String type, String duty, String worktime) {
        this.eid = eid;
        this.wid = wid;
        this.workplace = workplace;
        this.type = type;
        this.duty = duty;
        this.worktime = worktime;
    }

    public int getEid() {
        return eid;
    }

    public void setEid(int eid) {
        this.eid = eid;
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

    public String getWorktime() {
        return worktime;
    }

    public void setWorktime(String worktime) {
        this.worktime = worktime;
    }
}
