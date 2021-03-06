/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package business.dao;

import business.data.User;
import common.JDBCUtil;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author kingw
 */
public class UserDAO {
    private Connection connection;
    private Statement statement;
    private PreparedStatement ptmt;
    
    public UserDAO() {
            
        
    }
    
    public List<User> getAllUser() {
        String query = "SELECT * FROM user WHERE type='user' AND status='active' ";
        ResultSet rs = null;
        List<User> users = new ArrayList<User>();
        try {
            connection = JDBCUtil.getConnection();
            statement = connection.createStatement();
            rs = statement.executeQuery(query);
            while (rs.next()) {
                User  user = new User();
                user.setUid(rs.getLong("uid"));
                user.setName(rs.getString("name"));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setType(rs.getString("type"));
                user.setStatus (rs.getString("status"));
                users.add(user);
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
        return users;
    }
    
    public User getUser(String username) {
        
        String query = "SELECT * FROM user WHERE username='"+username+"'";
        ResultSet rs;
        rs = null;
        User user = null;
        
        try {
            connection = JDBCUtil.getConnection();
            statement = connection.createStatement();
            rs = statement.executeQuery(query);
            if (rs.next()) {
                user = new User();
                user.setUid(rs.getLong("uid"));
                user.setName(rs.getString("name"));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setType(rs.getString("type"));
                user.setStatus (rs.getString("status"));
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
        return user;
    }
 
    public User getUser(int uid) {
        String query = "SELECT * FROM user WHERE uid=" + uid;
        ResultSet rs = null;
        User user = null;
        try {
            connection = JDBCUtil.getConnection();
            statement = connection.createStatement();
            rs = statement.executeQuery(query);
            if (rs.next()) {
                user = new User();
                user.setUid(rs.getLong("uid"));
                user.setName(rs.getString("name"));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setType(rs.getString("type"));
                user.setStatus (rs.getString("status"));
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
        return user;
    }
    
    public void addUser(User user) {
        try {
            connection = JDBCUtil.getConnection();
            String query = "INSERT INTO user(name, username, password, type, status) VALUES(?,?,?,?,?)";
            ptmt = connection.prepareStatement(query);
            ptmt.setString(1, user.getName());
            ptmt.setString(2, user.getUsername());
            ptmt.setString(3, user.getPassword());
            ptmt.setString(4, "user");
            ptmt.setString(5, "active");
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
    
        public User updateUser(int uid, User user) 
        {
        String query = "SELECT * FROM user WHERE uid=" + uid;
        String query1 = "UPDATE user SET name=?, username=?, password=?, type=?, status=? WHERE uid=" + uid;
        ResultSet rs = null;
        try 
        {
            connection = JDBCUtil.getConnection();
            statement = connection.createStatement();
           rs = statement.executeQuery(query);
          
        if (rs.next()) 
           {
                ptmt = connection.prepareStatement(query1);
                ptmt.setString(1, user.getName());
                ptmt.setString(2, user.getUsername());
                ptmt.setString(3, user.getPassword());
                ptmt.setString(4, user.getType());
                ptmt.setString(5, user.getStatus());
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
        return this.getUser(uid);
    }
        
    public void deleteUser(String uid) {
        String query = "SELECT * FROM user WHERE uid=" + uid;
        String query1 = "UPDATE user SET status=? WHERE uid=" + uid;
        ResultSet rs = null;
       
        try 
        {
            connection = JDBCUtil.getConnection();
            statement = connection.createStatement();
           rs = statement.executeQuery(query);
          
        if (rs.next()) 
           {
                ptmt = connection.prepareStatement(query1);
                
                ptmt.setString(1, "inactive");
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
    }
}
