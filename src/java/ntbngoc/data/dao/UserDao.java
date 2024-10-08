/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package ntbngoc.data.dao;

import java.util.List;
import ntbngoc.data.model.User;

/**
 *
 * @author Admin
 */
public interface UserDao {
    public User findUser(String emailphone, String password);
    public User findUser(String emailphone);
//    public void insertUser(String name, String email, String phone, String password);
    public void insertUser(String email, String password);
    int getUserCount();
    public List<User> findAllUsers();
}