/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package common;

/**
 *
 * @author kingw
 */
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
 
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.*;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class JDBCUtil 
{
    private static JDBCUtil instance = new JDBCUtil();
    
    Connection con;
    private static String driver = "com.mysql.jdbc.Driver";
    private static String remoteurl = "jdbc:mysql://localhost:3306/ffms";
    private static String localurl = "jdbc:mysql://localhost:3306/ffms";
    private static String userName = "root";
    private static String password = "";
    
    static boolean onRemote;

    //use this constructor if using ConnectionPool
    public JDBCUtil() {}
    
    public void changeServer() throws IOException {
        FileOutputStream out = null;
        try {
            Properties props = new Properties();
            out = new FileOutputStream("database.properties");
            props.setProperty("onRemote", Boolean.toString(onRemote));
            props.store(out, null);
            out.close();
        } catch (FileNotFoundException ex) {
            Logger.getLogger(JDBCUtil.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                out.close();
            } catch (IOException ex) {
                Logger.getLogger(JDBCUtil.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    private Connection connect() {
        String url;
        if(onRemote){
            url = remoteurl;
        } else {
            url = localurl;
        }
        try {
            Class.forName (driver);
            con = DriverManager.getConnection(url, userName, password);
            DatabaseMetaData dma = con.getMetaData ();
            System.out.println("\nConnected to " + dma.getURL());
            System.out.println("Driver       " + dma.getDriverName());
            System.out.println("Version      " + dma.getDriverVersion());
            System.out.println("");
        }
        catch (SQLException ex) {
            while (ex != null) {
                System.out.println ("SQLState: " +
                                    ex.getSQLState ());
                System.out.println ("Message:  " +
                                    ex.getMessage ());
                System.out.println ("Vendor:   " +
                                    ex.getErrorCode ());
                ex = ex.getNextException ();
                System.out.println ("");
            }
            System.out.println("Connection to the database error");
        } catch (java.lang.Exception ex) {
            ex.printStackTrace ();
        }
        return con;
    }
    
    public static Connection getConnection() {
        return instance.connect();
    }
    
    public static void close(Connection connection) {
        if (connection != null) {
            try {
                connection.close();
            } catch (SQLException e) {
                /*Ignore*/
            }
        }
    }
 
    public static void close(Statement statement) {
        if (statement != null) {
            try {
                statement.close();
            } catch (SQLException e) {
                /*Ignore*/
            }
        }
    }
 
    public static void close(ResultSet resultSet) {
        if (resultSet != null) {
            try {
                resultSet.close();
            } catch (SQLException e) {
                /*Ignore*/
            }
        }
    }
}
