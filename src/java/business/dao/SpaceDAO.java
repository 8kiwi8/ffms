/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package business.dao;

import business.data.Space;
import common.JDBCUtil;
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
public class SpaceDAO {
    private Connection connection;
    private Statement statement;
    private PreparedStatement ptmt;
    
    public List<Space> getAllSpace() {
        String query = "SELECT * FROM space";
        ResultSet rs = null;
        List<Space> spaces = new ArrayList<Space>();
        try {
            connection = JDBCUtil.getConnection();
            statement = connection.createStatement();
            rs = statement.executeQuery(query);
            while (rs.next()) {
                Space space = new Space();
                space.setSid(rs.getLong("sid"));
                space.setName(rs.getString("name"));
                space.setDescription(rs.getString("description"));
                space.setPicPath(rs.getString("picPath"));
                space.setPrice (rs.getDouble ("price"));
                space.setStatus (rs.getString("status"));
                spaces.add(space);
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
        return spaces;
    }
    
    public Space getSpace(long sid) {
        String query = "SELECT * FROM space WHERE sid=" + sid;
        ResultSet rs = null;
        Space space = null;
        try {
            connection = JDBCUtil.getConnection();
            statement = connection.createStatement();
            rs = statement.executeQuery(query);
            if (rs.next()) {
                space = new Space();
                space.setSid(rs.getLong("sid"));
                space.setName(rs.getString("name"));
                space.setDescription(rs.getString("description"));
                space.setPicPath(rs.getString("picPath"));
                space.setPrice(rs.getDouble("price"));
                space.setStatus(rs.getString("status"));
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
        return space;
    }
    
    public void addSpace(Space space) {
        try {
            connection = JDBCUtil.getConnection();
            String query = "INSERT INTO space(name, description, picPath, price, status) VALUES(?,?,?,?,?)";
            ptmt = connection.prepareStatement(query);
            ptmt.setString(1, space.getName());
            ptmt.setString(2, space.getDescription());
            ptmt.setString(3, space.getPicPath());
            ptmt.setDouble(4, space.getPrice());
            ptmt.setString(5, space.getStatus());
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
    
    public Space updateSpace(long sid) 
    {
        String query = "SELECT * FROM user WHERE sid=" + sid;
        String query1 = "UPDATE space SET name=?, description=?, picPath=?, price=?, status=? WHERE sid=" + sid;
        ResultSet rs = null;
        Space space = null;
        try
        {
            connection = JDBCUtil.getConnection();
            statement = connection.createStatement();
            rs = statement.executeQuery(query);
            if (rs.next())
            {
                space = new Space ();
                ptmt = connection.prepareStatement(query1);
                ptmt.setString(1, space.getName());
                ptmt.setString(2, space.getDescription());
                ptmt.setString(3, space.getPicPath());
                ptmt.setDouble(4, space.getPrice());
                ptmt.setString(5, space.getStatus());
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
            JDBCUtil.close(ptmt);
            JDBCUtil.close(connection);
        }
        return space;
    }
    
    public void deleteSpace(long sid) 
    {
        try 
        {
            connection = JDBCUtil.getConnection();
            String query = "DELETE FROM space WHERE uid=" + sid;
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
