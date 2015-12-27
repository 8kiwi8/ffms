/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package business.dao;

import business.data.Booking;
import business.data.Space;
import business.data.Time;
import business.data.User;
import common.JDBCUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 *
 * @author kingw
 */
public class BookingDAO {
    private Connection connection;
    private Statement statement;
    private PreparedStatement ptmt;
    
    public List<Booking> getAllBooking() {
        String query = "SELECT * FROM booking, user, space, time WHERE "
                + "user.uid=booking.uid AND space.sid = booking.sid AND booking.tid = time.tid ORDER BY bid DESC";
        ResultSet rs = null;
        List<Booking> bookings = new ArrayList<Booking>();
        try {
            connection = JDBCUtil.getConnection();
            statement = connection.createStatement();
            rs = statement.executeQuery(query);
            while (rs.next()) {
                User user = new User();
                user.setUid(rs.getLong("user.uid"));
                user.setName(rs.getString("user.name"));
                user.setPassword(rs.getString("user.password"));
                user.setType(rs.getString("user.type"));
                Space space = new Space();
                space.setSid(rs.getLong("space.sid"));
                space.setName(rs.getString("space.name"));
                space.setDescription(rs.getString("space.description"));
                space.setPicPath(rs.getString("space.picPath"));
                space.setPrice(rs.getDouble("space.price"));
                Time time = new Time();
                time.setTid(rs.getInt("time.tid"));
                time.setDescription(rs.getString("time.description"));
                Booking booking = new Booking();
                booking.setBid(rs.getLong("bid"));
                booking.setSid(rs.getLong("space.sid"));
                booking.setSpace(space);
                booking.setUid(rs.getLong("user.uid"));
                booking.setUser(user);
                booking.setTid(rs.getInt("time.tid"));
                booking.setTime(time);
                booking.setPrice(rs.getDouble("booking.price"));
                Date start = new Date(rs.getTimestamp("booking.start").getTime());
                Date end = new Date(rs.getTimestamp("booking.end").getTime());
                Date date = new Date(rs.getDate("booking.date").getTime());
                booking.setStart(start);
                booking.setEnd(end);
                booking.setDate(date);
                booking.setRemark(rs.getString("remark"));
                booking.setStatus (rs.getString ("status"));
                bookings.add(booking);
            }
        } catch (SQLException ex) {
             while (ex != null) {
                System.out.println ("SQLState: " + ex.getSQLState ());
                System.out.println ("Message:  " + ex.getMessage ());
                System.out.println ("Vendor:   " + ex.getErrorCode ());
                ex = ex.getNextException();
                System.out.println ("");
            }
            System.out.println("Connection to the database error");
        } finally {
            JDBCUtil.close(rs);
            JDBCUtil.close(statement);
            JDBCUtil.close(connection);
        }
        return bookings;
    }
    
    public List<Booking> getUserBooking(Long uid) {
        String query = "SELECT * FROM booking, user, space, time WHERE "
                + "user.uid=booking.uid AND space.sid = booking.sid AND time.tid=booking.tid AND booking.uid="+uid+" ORDER BY bid DESC";
        System.out.print(query);
        ResultSet rs = null;
        List<Booking> bookings = new ArrayList<Booking>();
        try {
            connection = JDBCUtil.getConnection();
            statement = connection.createStatement();
            rs = statement.executeQuery(query);
            while (rs.next()) {
                User user = new User();
                user.setUid(rs.getLong("user.uid"));
                user.setName(rs.getString("user.name"));
                user.setPassword(rs.getString("user.password"));
                user.setType(rs.getString("user.type"));
                Space space = new Space();
                space.setSid(rs.getLong("space.sid"));
                space.setName(rs.getString("space.name"));
                space.setDescription(rs.getString("space.description"));
                space.setPicPath(rs.getString("space.picPath"));
                space.setPrice(rs.getDouble("space.price"));
                Time time = new Time();
                time.setTid(rs.getInt("time.tid"));
                time.setDescription(rs.getString("time.description"));
                Booking booking = new Booking();
                booking.setBid(rs.getLong("bid"));
                booking.setSid(rs.getLong("space.sid"));
                booking.setSpace(space);
                booking.setUid(rs.getLong("user.uid"));
                booking.setUser(user);
                booking.setTid(rs.getInt("time.tid"));
                booking.setTime(time);
                booking.setPrice(rs.getDouble("booking.price"));
                Date start = new Date(rs.getTimestamp("booking.start").getTime());
                Date end = new Date(rs.getTimestamp("booking.end").getTime());
                Date date = new Date(rs.getDate("booking.date").getTime());
                booking.setStart(start);
                booking.setEnd(end);
                booking.setDate(date);
                booking.setRemark(rs.getString("remark"));
                booking.setStatus (rs.getString ("status"));
                bookings.add(booking);
            }
        } catch (SQLException ex) {
             while (ex != null) {
                System.out.println ("SQLState: " + ex.getSQLState ());
                System.out.println ("Message:  " + ex.getMessage ());
                System.out.println ("Vendor:   " + ex.getErrorCode ());
                ex = ex.getNextException();
                System.out.println ("");
            }
            System.out.println("Connection to the database error");
        } finally {
            JDBCUtil.close(rs);
            JDBCUtil.close(statement);
            JDBCUtil.close(connection);
        }
        return bookings;
    }
    
    public List<Booking> getSpaceBooking(Long sid) {
        String query = "SELECT * FROM booking, user, space, time WHERE "
                + "user.uid=booking.uid AND space.sid = booking.sid AND time.tid=booking.tid AND sid="+sid+" ORDER BY bid DESC";
        ResultSet rs = null;
        List<Booking> bookings = new ArrayList<Booking>();
        try {
            connection = JDBCUtil.getConnection();
            statement = connection.createStatement();
            rs = statement.executeQuery(query);
            while (rs.next()) {
                User user = new User();
                user.setUid(rs.getLong("user.uid"));
                user.setName(rs.getString("user.name"));
                user.setPassword(rs.getString("user.password"));
                user.setType(rs.getString("user.type"));
                Space space = new Space();
                space.setSid(rs.getLong("space.sid"));
                space.setName(rs.getString("space.name"));
                space.setDescription(rs.getString("space.description"));
                space.setPicPath(rs.getString("space.picPath"));
                space.setPrice(rs.getDouble("space.price"));
                Time time = new Time();
                time.setTid(rs.getInt("time.tid"));
                time.setDescription(rs.getString("time.description"));
                Booking booking = new Booking();
                booking.setBid(rs.getLong("bid"));
                booking.setSid(rs.getLong("space.sid"));
                booking.setSpace(space);
                booking.setUid(rs.getLong("user.uid"));
                booking.setUser(user);
                booking.setTid(rs.getInt("time.tid"));
                booking.setTime(time);
                booking.setPrice(rs.getDouble("booking.price"));
                Date start = new Date(rs.getTimestamp("start").getTime());
                Date end = new Date(rs.getTimestamp("end").getTime());
                Date date = new Date(rs.getDate("date").getTime());
                booking.setStart(start);
                booking.setEnd(end);
                booking.setDate(date);
                booking.setRemark(rs.getString("remark"));
                booking.setStatus (rs.getString ("status"));
                bookings.add(booking);
            }
        } catch (SQLException ex) {
             while (ex != null) {
                System.out.println ("SQLState: " + ex.getSQLState ());
                System.out.println ("Message:  " + ex.getMessage ());
                System.out.println ("Vendor:   " + ex.getErrorCode ());
                ex = ex.getNextException();
                System.out.println ("");
            }
            System.out.println("Connection to the database error");
        } finally {
            JDBCUtil.close(rs);
            JDBCUtil.close(statement);
            JDBCUtil.close(connection);
        }
        return bookings;
    }
    
    public List<Booking> getBooking(java.util.Date myDate) {
        SimpleDateFormat ft = new SimpleDateFormat ("yyyy-MM-dd");
        String query = "SELECT * FROM booking, user, space, time WHERE "
                + "booking.uid=user.uid AND booking.sid=space.sid AND time.tid=booking.tid AND " +
                " booking.status <> 'Rejected' AND booking.date=\"" + ft.format(myDate) + "\"";
        System.out.println(query);
        ResultSet rs = null;
        List<Booking> bookings = new ArrayList<Booking>();
        try {
            connection = JDBCUtil.getConnection();
            statement = connection.createStatement();
            rs = statement.executeQuery(query);
            while (rs.next()) {
                User user = new User();
                user.setUid(rs.getLong("user.uid"));
                user.setName(rs.getString("user.name"));
                user.setPassword(rs.getString("user.password"));
                user.setType(rs.getString("user.type"));
                Space space = new Space();
                space.setSid(rs.getLong("space.sid"));
                space.setName(rs.getString("space.name"));
                space.setDescription(rs.getString("space.description"));
                space.setPicPath(rs.getString("space.picPath"));
                space.setPrice(rs.getDouble("space.price"));
                Time time = new Time();
                time.setTid(rs.getInt("time.tid"));
                time.setDescription(rs.getString("time.description"));
                Booking booking = new Booking();
                booking.setBid(rs.getLong("bid"));
                booking.setSid(rs.getLong("space.sid"));
                booking.setSpace(space);
                booking.setUid(rs.getLong("user.uid"));
                booking.setUser(user);
                booking.setTid(rs.getInt("time.tid"));
                booking.setTime(time);
                booking.setPrice(rs.getDouble("booking.price"));
                Date start = new Date(rs.getTimestamp("start").getTime());
                Date end = new Date(rs.getTimestamp("end").getTime());
                Date date = new Date(rs.getDate("date").getTime());
                booking.setStart(start);
                booking.setEnd(end);
                booking.setDate(date);
                booking.setRemark(rs.getString("remark"));
                booking.setStatus (rs.getString ("status"));
                bookings.add(booking);
            }
        } catch (SQLException ex) {
             while (ex != null) {
                System.out.println ("SQLState: " + ex.getSQLState ());
                System.out.println ("Message:  " + ex.getMessage ());
                System.out.println ("Vendor:   " + ex.getErrorCode ());
                ex = ex.getNextException();
                System.out.println ("");
            }
            System.out.println("Connection to the database error");
        } finally {
            JDBCUtil.close(rs);
            JDBCUtil.close(statement);
            JDBCUtil.close(connection);
        }
        return bookings;
    }
    
    public Booking getBooking(long bid) {
        String query = "SELECT * FROM booking, user, space, time WHERE "
                + "booking.uid=user.uid AND booking.sid=space.sid AND time.tid=booking.tid AND bid=" + bid;
        ResultSet rs = null;
        Booking booking = null;
        try {
            connection = JDBCUtil.getConnection();
            statement = connection.createStatement();
            rs = statement.executeQuery(query);
            if (rs.next()) {
                User user = new User();
                user.setUid(rs.getLong("user.uid"));
                user.setName(rs.getString("user.name"));
                user.setPassword(rs.getString("user.password"));
                user.setType(rs.getString("user.type"));
                Space space = new Space();
                space.setSid(rs.getLong("space.sid"));
                space.setName(rs.getString("space.name"));
                space.setDescription(rs.getString("space.description"));
                space.setPicPath(rs.getString("space.picPath"));
                space.setPrice(rs.getDouble("space.price"));
                Time time = new Time();
                time.setTid(rs.getInt("time.tid"));
                time.setDescription(rs.getString("time.description"));
                booking = new Booking();
                booking.setBid(rs.getLong("bid"));
                booking.setSid(rs.getLong("space.sid"));
                booking.setSpace(space);
                booking.setUid(rs.getLong("user.uid"));
                booking.setUser(user);
                booking.setTid(rs.getInt("time.tid"));
                booking.setTime(time);
                booking.setPrice(rs.getDouble("booking.price"));
                Date start = new Date(rs.getTimestamp("start").getTime());
                Date end = new Date(rs.getTimestamp("end").getTime());
                Date date = new Date(rs.getDate("date").getTime());
                booking.setStart(start);
                booking.setEnd(end);
                booking.setDate(date);
                booking.setRemark(rs.getString("remark"));
                booking.setStatus (rs.getString ("status"));
            }
        } catch (SQLException ex) {
             while (ex != null) {
                System.out.println ("SQLState: " + ex.getSQLState ());
                System.out.println ("Message:  " + ex.getMessage ());
                System.out.println ("Vendor:   " + ex.getErrorCode ());
                ex = ex.getNextException();
                System.out.println ("");
            }
            System.out.println("Connection to the database error");
        } finally {
            JDBCUtil.close(rs);
            JDBCUtil.close(statement);
            JDBCUtil.close(connection);
        }
        return booking;
    }
    
    public void newBooking(Booking booking) {
        try {
            connection = JDBCUtil.getConnection();
            String query = "INSERT INTO booking(uid, sid, price, start, end, remark, status, tid, date) VALUES(?,?,?,?,?,?,?,?,?)";
            ptmt = connection.prepareStatement(query);
            ptmt.setLong(1, booking.getUid());
            ptmt.setLong(2, booking.getSid());
            ptmt.setDouble(3, booking.getPrice());
            ptmt.setTimestamp(4, new java.sql.Timestamp(booking.getStart().getTime()));
            ptmt.setTimestamp(5, new java.sql.Timestamp(booking.getEnd().getTime()));
            ptmt.setString(6, booking.getRemark());
            ptmt.setString (7, booking.getStatus());
            ptmt.setInt(8, booking.getTid());
            ptmt.setTimestamp(9, new java.sql.Timestamp(booking.getDate().getTime()));
            ptmt.executeUpdate();
        } catch (SQLException ex) {
             while (ex != null) {
                System.out.println ("SQLState: " + ex.getSQLState ());
                System.out.println ("Message:  " + ex.getMessage ());
                System.out.println ("Vendor:   " + ex.getErrorCode ());
                ex = ex.getNextException();
                System.out.println ("");
            }
            System.out.println("Connection to the database error");
        } finally {
            JDBCUtil.close(ptmt);
            JDBCUtil.close(connection);
        }
    }
    
    public Booking updateBooking(long bid, Booking booking) 
    {
        String query = "SELECT * FROM booking, user, space WHERE " + "booking.uid=user.uid AND booking.sid=space.sid AND booking.bid=" + bid;
        String query1 = "UPDATE booking SET price=?, start=?, end=?, remark=?, status=? WHERE bid=" + bid;
        ResultSet rs = null;
        try 
        {
            connection = JDBCUtil.getConnection();
            statement = connection.createStatement();
            rs = statement.executeQuery(query);
            if (rs.next()) 
            {
                ptmt = connection.prepareStatement(query1);
                ptmt.setDouble (1, booking.getPrice());
                ptmt.setTimestamp(2, new java.sql.Timestamp(booking.getStart().getTime()));
                ptmt.setTimestamp(3, new java.sql.Timestamp(booking.getEnd().getTime()));
                ptmt.setString(4, booking.getRemark());
                ptmt.setString (5, booking.getStatus());
                ptmt.executeUpdate();
            }
        } 
        catch (SQLException ex) 
        {
             while (ex != null) 
             {
                System.out.println ("SQLState: " + ex.getSQLState ());
                System.out.println ("Message:  " + ex.getMessage ());
                System.out.println ("Vendor:   " + ex.getErrorCode ());
                ex = ex.getNextException();
                System.out.println ("");
            }
            System.out.println("Connection to the database error");
        } 
        finally 
        {
            JDBCUtil.close(rs);
            JDBCUtil.close(statement);
            JDBCUtil.close(connection);
        }
        return booking;
    }
    
    public void deleteBooking(long bid) 
    {
        try 
        {
            connection = JDBCUtil.getConnection();
            String query = "DELETE FROM booking WHERE bid=" + bid;
            ptmt = connection.prepareStatement(query);
            ptmt.executeUpdate();
        } 
        catch (SQLException ex) 
        {
             while (ex != null) 
             {
                System.out.println ("SQLState: " + ex.getSQLState ());
                System.out.println ("Message:  " + ex.getMessage ());
                System.out.println ("Vendor:   " + ex.getErrorCode ());
                ex = ex.getNextException();
                System.out.println ("");
            }
            System.out.println("Connection to the database error");
        }
        finally 
        {
            JDBCUtil.close(ptmt);
            JDBCUtil.close(connection);
        }
    }
}
