package com.akgarg.helper;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseConnectionHelper {
    private static Connection connection;

    public static Connection getConnection() {
        if (connection == null) {
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                String dbName = "sql6402457";
                String userName = "sql6402457";
                String password = "3hcPyg8afh";
                String hostname = "sql6.freemysqlhosting.net";
                String port = "3306";
                String jdbcUrl = "jdbc:mysql://" + hostname + ":" + port + "/" + dbName + "?user=" + userName + "&password=" + password;
                connection = DriverManager.getConnection(jdbcUrl);
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