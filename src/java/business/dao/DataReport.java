/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package business.dao;

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
public class DataReport {
    private Connection connection;
    private Statement statement;
    private PreparedStatement ptmt;
    
    public long getTotalBooking() {
        String query = "SELECT * FROM booking";
        return calculate(query);
    }
    
    public long getTotalUser() {
        String query = "SELECT * FROM user";
        return calculate(query);
    }
    
    public long getTotalSpace() {
        String query = "SELECT * FROM space";
        return calculate(query);
    }
    
    private long calculate(String query) {
        ResultSet rs = null;
        long result = 0;
        try {
            connection = JDBCUtil.getConnection();
            statement = connection.createStatement();
            rs = statement.executeQuery(query);
            while (rs.next()) {
                ++result;
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
        return result;
    }
}
