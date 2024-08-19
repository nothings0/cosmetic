/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ntbngoc.data.impl;

import java.sql.Connection;
import ntbngoc.data.dao.UserDao;
import ntbngoc.data.model.User;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import ntbngoc.data.driver.MysqlDriver;
import ntbngoc.utils.API;
/**
 *
 * @author Admin
 */
public class UserImpl implements UserDao {
    Connection con = MysqlDriver.getConnection();
    
    @Override
    public User findUser(String emailphone, String password){
        String sql;
        System.out.println("email" + emailphone);
        if(emailphone.contains("@")) {
            sql = "SELECT * FROM users WHERE email='" + emailphone + "' AND password='" + API.getMd5(password) + "'";
        }
        else sql = "SELECT * FROM users WHERE phone='" + emailphone + "' AND password='" + API.getMd5(password) + "'";
        try {
            PreparedStatement sttm = con.prepareStatement(sql);
            ResultSet rs = sttm.executeQuery();
                if(rs.next()) return new User(rs);
        } catch (SQLException ex) {
            Logger.getLogger(UserImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    @Override
    public User findUser(String emailphone) {
        String sql;
        if(emailphone.contains("@")) {
            sql = "SELECT * FROM users WHERE email = ?";
        } else {
            sql = "SELECT * FROM users WHERE phone = ?";
        }
        try (PreparedStatement sttm = con.prepareStatement(sql)) {
            sttm.setString(1, emailphone);
            try (ResultSet rs = sttm.executeQuery()) {
                if(rs.next()) {
                    return new User(rs);
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
//    @Override
//    public void insertUser(String name, String email, String phone, String password){
//        String sql="insert into users(name, email, phone, password, role) values('"+name+"','"+email;
//        sql = sql + "','"+phone+"','"+password+"','')";
//        try{
//            PreparedStatement sttm = con.prepareStatement(sql);
//            sttm.execute();
//        }catch(SQLException e){
//            e.printStackTrace();
//        }
//    }

    @Override
    public void insertUser(String email, String password) {
        String sql = "insert into users(email, password) values(?, ?)";
        try {
            PreparedStatement sttm = con.prepareStatement(sql);
            sttm.setString(1, email);
            sttm.setString(2, API.getMd5(password));
            sttm.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<User> findAllUsers() {
        List<User> users = new ArrayList<>();
        String query = "SELECT id, name, email, phone, role, address FROM users";

        try (
             PreparedStatement statement = con.prepareStatement(query);
             ResultSet resultSet = statement.executeQuery()) {

            while (resultSet.next()) {
                User user = new User();
                user.setId(resultSet.getInt("id"));
                user.setName(resultSet.getString("name"));
                user.setEmail(resultSet.getString("email"));
                user.setPhone(resultSet.getString("phone"));
                user.setRole(resultSet.getString("role"));
                user.setAddress(resultSet.getString("address"));

                users.add(user);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return users;
    }

    @Override
    public int getUserCount() {
        String query = "SELECT COUNT(*) FROM users";
        try {
            PreparedStatement statement = con.prepareStatement(query);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                return resultSet.getInt(1); // Trả về tổng số lượng người dùng
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }
}
    