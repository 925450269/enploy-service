package cn.eight.employservice.pojo;

import java.util.Date;

/**
 * @author wu
 * @create 2020-03-17
 */
public class Stafftrain {
    private  int tid;
    private  int wid;
    private  String organization;
    private  String content;
    private  String status;
    private  String   time;

    public Stafftrain() {
    }

    public Stafftrain(int tid, int wid, String organization, String content, String status, String time) {
        this.tid = tid;
        this.wid = wid;
        this.organization = organization;
        this.content = content;
        this.status = status;
        this.time = time;
    }

    public Stafftrain(int wid, String organization, String content, String status, String time) {
        this.wid = wid;
        this.organization = organization;
        this.content = content;
        this.status = status;
        this.time = time;
    }

    public int getTid() {
        return tid;
    }

    public void setTid(int tid) {
        this.tid = tid;
    }

    public int getWid() {
        return wid;
    }

    public void setWid(int wid) {
        this.wid = wid;
    }

    public String getOrganization() {
        return organization;
    }

    public void setOrganization(String organization) {
        this.organization = organization;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }
}
