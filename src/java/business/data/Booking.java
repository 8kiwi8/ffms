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
    double price;
    Date start;
    Date end;
    String remark;
    String status;
    
    User user;
    Space space;
    
    public Booking() {}

    public Booking(long uid, long sid, double price, Date start, Date end, String remark, String status) {
        this.uid = uid;
        this.sid = sid;
        this.price = price;
        this.start = start;
        this.end = end;
        this.remark = remark;
        this.status = status;
    }

    public Booking(double price, Date start, Date end, String remark, String status, User user, Space space) {
        this.price = price;
        this.start = start;
        this.end = end;
        this.remark = remark;
        this.status = status;
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
    
    public double getPrice ()
    {
        return price;
    }
    
    public void setPrice (double price)
    {
        this.price = price;
    }
    
    public Date getStart() {
        return start;
    }

    public void setStart(Date start) {
        this.start = start;
        setStartTime (start);
    }
    
    public void setStartTime (Date start)
    {
        int hour = start.getHours();
        int minute = start.getMinutes();
        String startTime = Integer.toString(hour);
        startTime += " : " + Integer.toString(minute);
    }
    
    public void setEndTime (Date end)
    {    
        int hour = end.getHours();
        int minute = end.getMinutes();
        String endTime = Integer.toString(hour);
        endTime += " : " + Integer.toString(minute);
    }
    
    public Date getEnd() {
        return end;
    }

    public void setEnd(Date end) {
        this.end = end;
        setEndTime (end);
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }
    
    public String getStatus ()
    {
        return status;
    }
    
    public void setStatus (String status)
    {
        this.status = status;
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
