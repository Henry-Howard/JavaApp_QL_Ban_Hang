# QL_Ban_Hang
A simple "QL_Ban_Hang" mean is a mini store app with Java

### What is this project about?
- Two driver: mysql-connector-j-8.0.31, rs2xml.jar
- qlbanhang.sql
- folder:  qlbanhang

### How to setup this project?
1. Clone this project
2. Open with Netbean IDE
3. Add Two Driver in Libraries
4. Creat connect database qlbanhang.sql in Source Packages with name: "condb". At "condb" create file "conndb.java"
5. Put the code in "conndb.java" is can connect database

### Sample Code:

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package condb;
import java.sql.*;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author Admin
 */
 
public class conndb {
    public static Connection getCon()
    {
         String DB_URL = "jdbc:mysql://localhost:3306/qlbanhang";
         String USER_NAME = "root";
         String PASSWORD = "";
        Connection conn = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(DB_URL, USER_NAME, PASSWORD);
            System.out.println("connect successfully!");
        } catch (Exception ex) {
            System.out.println("connect failure!");
            ex.printStackTrace();
        }
        return conn;
    }
}

