package com.akgarg.helper;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseConnectionHelper {
    private static Connection connection;

    public static Connection getConnection() {
        if (connection == null) {
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/servletdatabase", "root", "root");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return connection;
    }

    public static void closeConnections() {
        try {
            if (connection != null) {
                connection.close();
                connection = null;
            }
        } catch (Exception e) {
            System.out.println("Exception in closing database connections: " + e.getClass() + ", " + e.getMessage());
        }
    }
}
