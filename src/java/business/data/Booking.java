/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package business.data;

import java.util.Date;

/**
 *
 * @author kingw
 */
public class Booking {
    long uid;
    long sid;
    long bid;
    Date start;
    Date end;
    String remark;
    
    User user;
    Space space;
    
    public Booking() {}

    public Booking(long uid, long sid, Date start, Date end, String remark) {
        this.uid = uid;
        this.sid = sid;
        this.start = start;
        this.end = end;
        this.remark = remark;
    }

    public Booking(Date start, Date end, String remark, User user, Space space) {
        this.start = start;
        this.end = end;
        this.remark = remark;
        this.user = user;
        this.space = space;
        this.uid = user.getUid();
        this.sid = space.getSid();
    }
    

    public long getUid() {
        return uid;
    }

    public void setUid(long uid) {
        this.uid = uid;
    }

    public long getSid() {
        return sid;
    }

    public void setSid(long sid) {
        this.sid = sid;
    }

    public long getBid() {
        return bid;
    }

    public void setBid(long bid) {
        this.bid = bid;
    }

    public Date getStart() {
        return start;
    }

    public void setStart(Date start) {
        this.start = start;
    }

    public Date getEnd() {
        return end;
    }

    public void setEnd(Date end) {
        this.end = end;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Space getSpace() {
        return space;
    }

    public void setSpace(Space space) {
        this.space = space;
    }
    
}
