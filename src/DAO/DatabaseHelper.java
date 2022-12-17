
package DAO;

import java.sql.*;
public class DatabaseHelper {
    public static Connection getConnection(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library_management","root","");
            return con;
        } catch (Exception e) {
            System.err.println("Connection error");
            return null;
        }
    }
}
