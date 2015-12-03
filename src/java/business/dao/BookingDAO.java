/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package business.dao;

import business.data.Booking;
import business.data.Space;
import business.data.User;
import common.JDBCUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
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
        String query = "SELECT * FROM booking, user, space WHERE "
                + "user.uid=uid AND space.sid = sid";
        ResultSet rs = null;
        List<Booking> bookings = new ArrayList<Booking>();
        try {
            connection = JDBCUtil.getConnection();
            statement = connection.createStatement();
            rs = statement.executeQuery(query);
            if (rs.next()) {
                User user = new User();
                user.setUid(rs.getLong("uid"));
                user.setName(rs.getString("name"));
                user.setPassword(rs.getString("password"));
                user.setType(rs.getString("type"));
                Space space = new Space();
                space.setSid(rs.getLong("sid"));
                space.setName(rs.getString("name"));
                space.setDescription(rs.getString("description"));
                space.setPicPath(rs.getString("picPath"));
                Booking booking = new Booking();
                booking.setBid(rs.getLong("bid"));
                booking.setSid(rs.getLong("sid"));
                booking.setSpace(space);
                booking.setUid(rs.getLong("uid"));
                booking.setUser(user);
                String start = rs.getString("start");
                String end = rs.getString("end");
                Date startDate = new Date(start);
                Date endDate = new Date(end);
                booking.setStart(startDate);
                booking.setEnd(endDate);
                booking.setRemark(rs.getString("remark"));
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
        String query = "SELECT * FROM booking, user, space WHERE "
                + "user.uid=uid AND space.sid = sid AND uid="+uid;
        ResultSet rs = null;
        List<Booking> bookings = new ArrayList<Booking>();
        try {
            connection = JDBCUtil.getConnection();
            statement = connection.createStatement();
            rs = statement.executeQuery(query);
            if (rs.next()) {
                User user = new User();
                user.setUid(rs.getLong("uid"));
                user.setName(rs.getString("name"));
                user.setPassword(rs.getString("password"));
                user.setType(rs.getString("type"));
                Space space = new Space();
                space.setSid(rs.getLong("sid"));
                space.setName(rs.getString("name"));
                space.setDescription(rs.getString("description"));
                space.setPicPath(rs.getString("picPath"));
                Booking booking = new Booking();
                booking.setBid(rs.getLong("bid"));
                booking.setSid(rs.getLong("sid"));
                booking.setSpace(space);
                booking.setUid(rs.getLong("uid"));
                booking.setUser(user);
                String start = rs.getString("start");
                String end = rs.getString("end");
                Date startDate = new Date(start);
                Date endDate = new Date(end);
                booking.setStart(startDate);
                booking.setEnd(endDate);
                booking.setRemark(rs.getString("remark"));
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
        String query = "SELECT * FROM booking, user, space WHERE "
                + "user.uid=uid AND space.sid = sid AND sid="+sid;
        ResultSet rs = null;
        List<Booking> bookings = new ArrayList<Booking>();
        try {
            connection = JDBCUtil.getConnection();
            statement = connection.createStatement();
            rs = statement.executeQuery(query);
            if (rs.next()) {
                User user = new User();
                user.setUid(rs.getLong("uid"));
                user.setName(rs.getString("name"));
                user.setPassword(rs.getString("password"));
                user.setType(rs.getString("type"));
                Space space = new Space();
                space.setSid(rs.getLong("sid"));
                space.setName(rs.getString("name"));
                space.setDescription(rs.getString("description"));
                space.setPicPath(rs.getString("picPath"));
                Booking booking = new Booking();
                booking.setBid(rs.getLong("bid"));
                booking.setSid(rs.getLong("sid"));
                booking.setSpace(space);
                booking.setUid(rs.getLong("uid"));
                booking.setUser(user);
                String start = rs.getString("start");
                String end = rs.getString("end");
                Date startDate = new Date(start);
                Date endDate = new Date(end);
                booking.setStart(startDate);
                booking.setEnd(endDate);
                booking.setRemark(rs.getString("remark"));
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
        String query = "SELECT * FROM booking, user, space WHERE "
                + "uid=user.uid AND sid=space.sid AND bid=" + bid;
        ResultSet rs = null;
        Booking booking = null;
        try {
            connection = JDBCUtil.getConnection();
            statement = connection.createStatement();
            rs = statement.executeQuery(query);
            if (rs.next()) {
                User user = new User();
                user.setUid(rs.getLong("uid"));
                user.setName(rs.getString("name"));
                user.setPassword(rs.getString("password"));
                user.setType(rs.getString("type"));
                Space space = new Space();
                space.setSid(rs.getLong("sid"));
                space.setName(rs.getString("name"));
                space.setDescription(rs.getString("description"));
                space.setPicPath(rs.getString("picPath"));
                booking = new Booking();
                booking.setBid(rs.getLong("bid"));
                booking.setSid(rs.getLong("sid"));
                booking.setSpace(space);
                booking.setUid(rs.getLong("uid"));
                booking.setUser(user);
                String start = rs.getString("start");
                String end = rs.getString("end");
                Date startDate = new Date(start);
                Date endDate = new Date(end);
                booking.setStart(startDate);
                booking.setEnd(endDate);
                booking.setRemark(rs.getString("remark"));
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
            String query = "INSERT INTO booking(uid, sid, start, end, remark) VALUES(?,?,?,?,?)";
            ptmt = connection.prepareStatement(query);
            ptmt.setLong(1, booking.getUid());
            ptmt.setLong(2, booking.getSid());
            ptmt.setTimestamp(3, new java.sql.Timestamp(booking.getStart().getTime()));
            ptmt.setTimestamp(4, new java.sql.Timestamp(booking.getEnd().getTime()));
            ptmt.setString(5, booking.getRemark());
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
}
