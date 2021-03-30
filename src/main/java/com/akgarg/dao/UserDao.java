package com.akgarg.dao;

import com.akgarg.entity.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

@SuppressWarnings("unused")
public class UserDao {
    private final Connection connection;
    private PreparedStatement preparedStatement;
    private Statement statement;
    private ResultSet resultSet;

    public UserDao(Connection connection) {
        this.connection = connection;
    }

    /**
     * addUser() returns integer value based on following conditions
     * 1 (successfully added)
     * 0 (user already registered)
     * -1 (email already used)
     * 404 (other SQLException)
     */
    public int addUser(User user) {
        String query = "INSERT INTO users(username, email, password) VALUES(?,?,?)";
        int response = 404;

        try {
            preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, user.getUsername());
            preparedStatement.setString(2, user.getEmail());
            preparedStatement.setString(3, user.getPassword());
            int result = preparedStatement.executeUpdate();
            if (result == 1) {
                return 1;
            }
        } catch (Exception e) {
            System.out.println("Exception in adding new user: " + e.getClass() + ", " + e.getMessage());

            if (e.getMessage().contains("users.PRIMARY")) {
                response = 0;
            } else if (e.getMessage().contains("users.email")) {
                response = -1;
            }
        }
        return response;
    }

    public boolean updateUser(User user) {
        String query = "UPDATE users set password=? WHERE username=? AND email=?";
        boolean isUpdated = false;

        try {
            preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, user.getPassword());
            preparedStatement.setString(2, user.getUsername());
            preparedStatement.setString(3, user.getEmail());
            if (preparedStatement.executeUpdate() == 1) {
                isUpdated = true;
            }
        } catch (Exception e) {
            System.out.println("Exception in updating user info: " + e.getClass() + ", " + e.getMessage());
        }
        return isUpdated;
    }

    public boolean updateUser(String username, String email, String password) {
        String query = "UPDATE users set password=? WHERE username=? AND email=?";
        boolean isUpdated = false;

        try {
            preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, password);
            preparedStatement.setString(2, username);
            preparedStatement.setString(3, email);

            if (preparedStatement.executeUpdate() == 1) {
                isUpdated = true;
            }
        } catch (Exception e) {
            System.out.println("Exception in updating user info: " + e.getClass() + ", " + e.getMessage());
        }
        return isUpdated;
    }

    public User getUserUsingUsername(String username) {
        String query = "SELECT * FROM users WHERE username='" + username + "'";

        try {
            statement = connection.createStatement();
            resultSet = statement.executeQuery(query);
            User user;

            if (resultSet != null && resultSet.next()) {
                user = new User(
                        resultSet.getString(1),
                        resultSet.getString(2),
                        resultSet.getString(3));
                return user;
            }
        } catch (Exception e) {
            System.out.println("Exception in getting user info: " + e.getClass() + ", " + e.getMessage());
        }
        return null;
    }

    public User getUserUsingEmail(String email) {
        String query = "SELECT * FROM users WHERE email='" + email + "'";

        try {
            statement = connection.createStatement();
            resultSet = statement.executeQuery(query);

            User user;

            if (resultSet != null && resultSet.next()) {
                user = new User(
                        resultSet.getString(1),
                        resultSet.getString(2),
                        resultSet.getString(3));
                return user;
            }
        } catch (Exception e) {
            System.out.println("Exception in getting user info using email: " + e.getClass() + ", " + e.getMessage());
        }
        return null;
    }
}