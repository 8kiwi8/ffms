/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package business.data;

/**
 *
 * @author kingw
 */
public class Space {
    long sid;
    String name;
    String description;
    String picPath;
    double price;
    String status;
    
    public Space() {}

    public Space(String name, String description, String picPath, double price, String status) {
        this.name = name;
        this.description = description;
        this.picPath = picPath;
        this.price = price;
        this.status = status;
    }
    
    
    public long getSid() {
        return sid;
    }

    public void setSid(long sid) {
        this.sid = sid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getPicPath() {
        return picPath;
    }

    public void setPicPath(String picPath) {
        this.picPath = picPath;
    }
    
    public double getPrice ()
    {
        return price;
    }
    
    public void setPrice (double price)
    {
        this.price = price;
    }
    
    public void setStatus (String status)
    {
        this.status = status;
    }
    
    public String getStatus ()
    {
        return status;
    }
}