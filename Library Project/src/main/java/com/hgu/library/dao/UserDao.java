package com.hgu.library.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.hgu.library.model.User;
import com.hgu.library.util.DBConnectionUtility;

public class UserDao {
    public static int addUser(User user) {
        int status=0;
        try(Connection con= DBConnectionUtility.getConnection()){
            String query = "insert into user (id, name, email, registration, admin, reg_date) values (?, ?, ?, ?, ?, ?)";
            PreparedStatement preparedStatement = con.prepareStatement(query);
            preparedStatement.setInt(1, user.getId());
            preparedStatement.setString(2, user.getName());
            preparedStatement.setString(3, user.getEmail());
            preparedStatement.setInt(4, user.getRegistration());
            preparedStatement.setInt(5, user.getAdmin());
            preparedStatement.setDate(6, (Date)user.getReg_date());
            status = preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return status;
    }
    public static User getUserByEmail(String email) {
    	User user = new User();
        try(Connection con = DBConnectionUtility.getConnection()){
            String query = "select * from user where email=?";
            PreparedStatement preparedStatement = con.prepareStatement(query);
            preparedStatement.setString(1, email);
            ResultSet resultSet = preparedStatement.executeQuery();
            while(resultSet.next()){
                user.setEmail(resultSet.getString("email"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    	return user;
    }
    public static int getUserById(String email) {
    	User user = new User();
        try(Connection con = DBConnectionUtility.getConnection()){
            String query = "select id from user where email=?";
            PreparedStatement preparedStatement = con.prepareStatement(query);
            preparedStatement.setString(1, email);
            ResultSet resultSet = preparedStatement.executeQuery();
            while(resultSet.next()){
                user.setId(resultSet.getInt("id"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    	return user.getId();
    }
}
